function Exer2y3pro
  pkg load image;
  k=120;
  I=imread("foreground.png");
  J=imread("background.png");
  
  [ row ,col,~ ] = size(I);
  J_T=imresize(J, [ row col ]);
  
  matT=zeros(row,col,3);
  
  for b=1:3
    matT(:,:,b)= CalC(I(:,:,b)); 
  endfor
  
  
  M=zeros(row,col);
  M=matT(:,:,1).*matT(:,:,2).*matT(:,:,3);
  N=not(M);
  
  M=uint8(M);
  N=uint8(N);
  K=zeros(row,col,3);
  
  matK=zeros(row,col,3);
  for b=1:3
    matK(:,:,b)=M.*J_T(:,:,b)+N.*I(:,:,b);
  endfor
 
  imshow(matK);
endfunction

function m=CalC(I)
  m=zeros(size(I));
  [N ,D]=size(I);
  for i=1:N
    for j=1:D
      if(I(i,j)>120)
        m(i,j)=1;
      elseif (I(i,j)<=120)
        m(i,j)=0;
      end
    endfor
  endfor
endfunction
