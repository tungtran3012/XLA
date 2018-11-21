function bai1De2
	I=imread('fence.png');
	T=I(:,:,1)/3+I(:,:,2)/3+I(:,:,3)/3;
	#imshow(J);

	W=zeros(101);
	[R,C]=size(W);
	for i=1:101
		for j=1:101
			if(i==51 || j==51)
				W(i,j)=1;
			endif	
		endfor
	endfor
	
endfunction
