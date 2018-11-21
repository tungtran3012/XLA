function [r_hist,g_hist,b_hist] = histogram_rgb(image)
	r_image = image(:,:,1);
	g_image = image(:,:,2);
	b_image = image(:,:,3);

	r_hist = histogram(r_image);
	g_hist = histogram(g_image);
	b_hist = histogram(b_image);
end