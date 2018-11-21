%Output: Thành ph?n ch?a mã v?ch 
function Debai1
  %C1-y1
  I=imread("barCodesDetection.png");

  %Bi?n ?nh I thành ?nh xám và ép ki?u v? uint8
  J=uint8(rgb2gray(I));
 
  subplot(2,2,1),imshow(I);
  
  J=CalC(J);
  subplot(2,2,2),imshow(J);
  %imshow(J_CV);
  
  %C1-y2
  %vi?t hàm thành ph?n liên thông 4,8
  
  %C1-y3
  d1=load("labelMatrix.txt");
  %figure;
  %imshow(J_CV);
  %figure;
  %imshow(d1);
  
  %d2=load("info.txt");
  
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