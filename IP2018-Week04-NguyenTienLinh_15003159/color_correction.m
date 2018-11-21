# Function retrieve image has correct color with image input (image_1) from image has changed color (image_2) using n (n>3) mappings
function image_color_correct = color_correction(image_1, image_2,n)
	[ROW, COL, BAND] = size(image_1);
	mat_image_1 = image_to_matrix(image_1);
	mat_image_2 = image_to_matrix(image_2);
	B = zeros(3,3);

	# Choose n-mapping point has different value each other from 2 image
	index = zeros(1,n);
	index(1) = last_index = temp = 1;
	while (last_index < n)
		temp = temp + 1;
		last_index = last_index + 1;
		index(last_index) = temp;
		for b=1:BAND
			if (mat_image_1(b,index(last_index))==mat_image_1(b,index(last_index-1)))
				last_index = last_index - 1;
				break;
			end
		end
	end

	# Get the first n-mapping point of image_1
	X = mat_image_1(:,index);
	Y = mat_image_2(:,index);
	B = Y * X' * (X * X')^-1;
	
	image_color_correct = B^-1 * mat_image_2;
	image_color_correct = matrix_to_image(image_color_correct,size(image_1));
	image_color_correct = uint8(image_color_correct);
end