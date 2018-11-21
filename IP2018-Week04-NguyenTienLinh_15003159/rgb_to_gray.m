function gray_image = rgb_to_gray(image)
	red = image(:,:,1);
	green = image(:,:,2);
	blue = image(:,:,3);

	gray_image = red/3 + green/3 + blue/3;
end