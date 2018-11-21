function hist_image = histogram(image)
	[ROW,COL] = size(image);
	hist_image=1:256;
	for g=0:255
		hist_image(g+1) = sum(sum(image == g));
	end
end