function J = Pixelization (I,s)
  [m,n,b]=size(I);
  J=zeros(floor(m/s),floor(n/s),3);
  m
  for b=1:3
    for r=1:floor(m/s)-1
        for c=1:floor(n/s)-1
            r
            c
            temp = I(r*s:(r+1)*s-1,c*s:(c+1)*s-1,b);
            J(r,c,b) = mean(temp(:));
        endfor
    endfor 
   b 
  endfor
 J = cat(3,uint8(J(:,:,1)),uint8(J(:,:,2)),uint8(J(:,:,3)));  
endfunction
