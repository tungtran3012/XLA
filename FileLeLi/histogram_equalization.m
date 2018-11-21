function image_equalized = histogram_equalization(image)
	
	[ROW,COL,BAND] = size(image)
	A = ROW * COL;
	image_equalized = zeros(ROW,COL,3);
	[r_hist,g_hist,b_hist] = histogram_rgb(image);
	r_pdf = g_pdf = b_pdf = zeros(256,1);

	r_pdf(1) = r_hist(1)/A;
	g_pdf(1) = g_hist(1)/A;
	b_pdf(1) = b_hist(1)/A;
	
	for g=1:255
		r_pdf(g+1) = r_hist(g+1)/A + r_pdf(g);
		g_pdf(g+1) = g_hist(g+1)/A + g_pdf(g);
		b_pdf(g+1) = b_hist(g+1)/A + b_pdf(g);
	end

	for r = 1:ROW
		for c = 1:COL
			for g=0:255
				if(image(r,c,1) == g)
					image_equalized(r,c,1) = 255*r_pdf(g+1);
				end
				if(image(r,c,2) == g)
					image_equalized(r,c,2) = 255*g_pdf(g+1);
				end
				if(image(r,c,3) == g)
					image_equalized(r,c,3) = 255*b_pdf(g+1);
				end
			end
		end
	end

end