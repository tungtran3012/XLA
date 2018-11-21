## hatd_tct@vnu.edu.vn.
function Exer1
  pkg load image;
  I=imread("GreenVietnam.png");
  
  [row,col,~]=size(I);
  maskMat=[0,-1,0;-1,5,-1;0,-1,0];
  matS=zeros(row,col,3);
  for b=1:3
    matS(:,:,b)=conv2(I(:,:,b),maskMat,"same");
  endfor
  
  matS=uint8(matS);
  for b=1:3
    matS(:,:,b)=matS(:,:,b)+I(:,:,b);
  endfor
  imshow(matS);
endfunction
