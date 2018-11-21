function K = chromakeying(v_t, v_b, size_image)
	ROW = size_image(1), COL = size_image(2), BAND = size_image(3);
	K = zeros(ROW,COL,BAND);
	id = find(v_b);
	for b = 1:BAND
		v_t(id,b) = 0;
		for j = 1 : COL
			count = 1;
			for i = (j-1)*ROW+1 : j*ROW
				K(count, j, b) = v_t(i,b);
				count = count + 1;
			end
		end
	end
	K = uint8(K);
end