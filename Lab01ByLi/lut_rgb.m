function [lut_r,lut_g,lut_b] = lut_rgb(image_1, image_2)
	[r_pdf_1, g_pdf_1, b_pdf_1] = calc_pdf(image_1);
	[r_pdf_2, g_pdf_2, b_pdf_2] = calc_pdf(image_2);

	lut_r = lut_histogram(r_pdf_1, r_pdf_2);
	lut_g = lut_histogram(g_pdf_1, g_pdf_2);
	lut_b = lut_histogram(b_pdf_1, b_pdf_2);
end