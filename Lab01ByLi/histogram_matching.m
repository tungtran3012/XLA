function image = histogram_matching(image_1, image_2)
	[ROW,COL,BAND] = size(image_1);
	image = uint8(zeros(ROW,COL,BAND));
	[lut_r,lut_g,lut_b] = lut_rgb(image_1, image_2);
	for g = 0 : 255
		image(:, :, 1) += lut_r(g + 1) * (image_1(:,:,1) == g);
		image(:, :, 2) += lut_g(g + 1) * (image_1(:,:,2) == g);
		image(:, :, 3) += lut_b(g + 1) * (image_1(:,:,3) == g);
	end
end