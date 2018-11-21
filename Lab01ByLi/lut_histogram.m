function LUT = lut_histogram(pdf_i, pdf_j)
	g_j = 0;
	for g_i = 0 : 255
		while ( pdf_j(g_j + 1) < pdf_i(g_i + 1) && g_j < 255)
			g_j = g_j + 1;
		end
		LUT(g_i + 1) = g_j;
	end
end