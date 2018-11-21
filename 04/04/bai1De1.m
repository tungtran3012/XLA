function bai1De1
	I=imread('coneDetection.jpg');
	G=I(:,:,1)/3+I(:,:,2)/3+I(:,:,3);
	K=CalC(G);
	
	subplot(1,3,1),imshow(I);
	subplot(1,3,2),imshow(G);
	subplot(1,3,3),imshow(K);
endfunction

function m=CalC(I)
  m=zeros(size(I));
  [N ,D]=size(I);
  for i=1:N
    for j=1:D
      if(I(i,j)>120)
        m(i,j)=0;
      elseif (I(i,j)<=120)
        m(i,j)=1;
      end
    endfor
  endfor
endfunction
