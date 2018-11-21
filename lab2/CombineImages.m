function K=CombineImages(I,J)
  k=120;
  [m,n,b]=size(I);
  T=zeros(size(I));
  
  for b=1:3
    T(:,:,b)=I(:,:,b) > k;  
  endfor  
  M = zeros(m,n);
  M = T(:,:,1).*T(:,:,2).*T(:,:,3);
  N=not(M);
  M=uint8(M);
  N=uint8(N);
  K=zeros(m,n,3);
  for b=1:3
	 K(:,:,b)=M.*J(:,:,b)+N.*I(:,:,b);
   
  endfor
  K = cat(3,uint8(K(:,:,1)),uint8(K(:,:,2)),uint8(K(:,:,3)));
endfunction
