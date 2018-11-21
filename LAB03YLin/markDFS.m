function [marked_mat,remove_row,remove_col] = markDFS(r,c,label,binary_image)
	marked_mat = zeros(size(binary_image));
	marked_mat(r,c) = label;
	remove_row = remove_col = [];
	
	while(!isempty(r))
		for i=r(1)-1:r(1)+1
			for j=c(1)-1:c(1)+1
				if(i!=r(1)||j!=c(1))
					if(binary_image(i,j)==1 && marked_mat(i,j)!=label)
						marked_mat(i,j)=label;
						r=[r;i];
						c=[c;j];
					end
				end
			end
		end
		remove_row = [remove_row,r(1)];
		remove_col = [remove_col,c(1)];
		r(1) = c(1) = [];
	end
end
