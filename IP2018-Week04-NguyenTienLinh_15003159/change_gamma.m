function gamma_changed_image = change_gamma(image, gamma)
	gamma_changed_image = 255 * ((double(image) ./ 255) .^ 1/gamma);
	gamma_changed_image = uint8(gamma_changed_image);
end
