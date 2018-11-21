function [r_pdf, g_pdf, b_pdf] = calc_pdf(image)
	[ROW,COL,BAND] = size(image);
	A = ROW * COL;
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
end