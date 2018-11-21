function image = matrix_to_image(matrix,size)
	ROW = size(1); COL = size(2); BAND = size(3);
	image = zeros(ROW,COL,BAND);

	for b=1:BAND
		for r=1:ROW
			image(r,:,b) = matrix(b,COL*(r-1)+1:COL*r);
		end
	end
end