# Given a gray image and kernel matrix, return result_image is result of convolution of the image
function result_image = convolution_image(image,kernel)
	[ROW, COL] = size(image);
	[m , n] = size(kernel);
	rpad = fix(m/2);
	cpad = fix(n/2);

	A = zeros(ROW + m -1, COL + n -1);
	hrorig = rpad + 1;
	hcorig = cpad + 1;

	# Perform Shift-Multiply-Add method
	for r=1:m
		for c=1:n
			A(r:r+ROW-1,c:c+COL-1) += double(image) .* kernel(r,c);
		end
	end

	result_image = uint8(A(hrorig:hrorig+ROW-1,hcorig:hcorig+COL-1));
end