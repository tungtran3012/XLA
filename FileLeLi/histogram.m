function hist_image = histogram(image)
	[ROW,COL] = size(image);
	hist_image=1:256;
	for g=0:255
		count = 0;

		for r = 1:ROW
			for c = 1:COL
				if (image(r,c) == g)
					count++;
				end
			end
		end
		
		hist_image(g+1) = count;
	end
end