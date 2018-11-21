% image,label_mat,info
% image=imread('barCodesDetection.png');
% info=load('info.txt');

% [binary_image,label_mat] = barCodesDetection(image,info)

function [binary_image,label_mat] = barCodesDetection(image,info)
    threshold = 120;
    [ROW,COL,BAND] = size(image);
    gray_image = image(:,:,1)/3 + image(:,:,2)/3 + image(:,:,3)/3;
    binary_image = (gray_image < threshold);
    binary_image = [zeros(1,COL);binary_image;zeros(1,COL)];
    binary_image = [zeros(ROW+2,1),binary_image,zeros(ROW+2,1)];
    
    label_mat = zeros(size(binary_image));
    [index_row,index_col] = find(binary_image);
    
	label = 0;
	
	while (!isempty(index_row))
		remove_index=[];
		[marked_mat,remove_row,remove_col] = markDFS(index_row(1),index_col(1),label,binary_image);
		for i=1:max(size(remove_row))
			remove_index = [remove_index;find(sum(([[index_row,index_col]==[remove_row(i),remove_col(i)]])')==2)];
		end
		label++;
		label_mat += marked_mat;
		index_row(remove_index) = index_col(remove_index) = [];		
	end

    % MajorAxisLength Orientation Eccentricity

     eccent = info(:,3);
     major = info(:,1);
     orient = info(:,2);
     [N,feature]=size(info);
     [ROW,COL] = size(label_mat);
     result = zeros(ROW,COL);
     for i=1:N
         if(eccent(i) > 0.8 && major(i) > 20 && major(i) < 120 && orient(i) < -70)
             result = result + label_mat(label_mat == i)(1)*(label_mat == i);
         end
     end
endfunction

