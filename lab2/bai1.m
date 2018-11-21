function S= bai1(I,h)
  [M,N,b]=size(I);
  for b=1:3
    [m,n] = size(h);
    m=floor(m/2);
    n=floor(n/2);
    S_b=zeros(M+2*m,N+2*n);
    
    [R,C]=size(S_b)
    size(I)
    for i=1:2*m+1
      for j=1:2*n+1
        temp=zeros(M+2*m,N+2*n);
        temp(i:i+M-1,j:j+N-1)=I(:,:,b)*h(i,j)/9;
        S_b=S_b+temp;
      endfor
    endfor  
    S(:,:,b)=uint8(S_b(m:R-m-1,n:C-n-1)*9);
    S(:,:,b)=S(:,:,b)+I(:,:,b);
  endfor
  
  
endfunction
