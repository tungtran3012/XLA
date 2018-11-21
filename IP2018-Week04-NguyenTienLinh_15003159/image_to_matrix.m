function matrix = image_to_matrix(image)
	[ROW, COL, BAND] = size(image);
	matrix = zeros(BAND,ROW*COL);

	for b=1:BAND
		matrix(b,:) = image(:,:,b)'(:);
	end
	matrix = double(matrix);
end