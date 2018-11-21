function [binary_image,label_mat]=barCodeDetection(image,info)
threshold=120;
[ROW,COL,BAND]=size(image);
gray_image=image(:,:,1)/3+image(:,:,2)/3+image(:,:,3)/3;

binary_image=(gray_image<threshold);
binary_image=[zeros(1,COL);binary_image;zeros(1,COL)];
binary_image=[zeros(ROW+2,1),binary_image,zeros(ROW+2,1)];

label_mat=zeros(size(binary_image));
[index_row,index_col]=find(binary_image);
label=0;
while(!isempty(index_row))
	remove_index=[];
	[marked_mat,remove_row,remove_col]=markDFS(index_row(1),index_col(1),label,binary_image);
	for i=1:max(size(remove_row))
		remove_index=[remove_index;find(sum(([[index_row,index_col]==[remove_row(i),remove_col(i)]])')==2)];
	endfor
	label++;
	label_mat+=marked_mat;
	remove_row(remove_index)=remove_col(remove_index)=[]
endwhile
endfunction
