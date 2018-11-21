## Cho 2 anh mau (I,J), tien hanh so khop histogram tren 2 anh, cho anh thu 3
## Hien thi ca 3 anh.
## (I va J phai cung loai anh, vd: cung la anh xam hoac cung la anh mau)
function Cau01
  I=imread("image1.jpg");
  J=imread("images2.jpg");
  
  if length(size(I)==2)
    b=1;
  endif
  if length(size(I)==3)
    b=3;
  endif
  img3=MatHis(I,J,b);
  imwrite(uint8(img3),"image3.jpg");
endfunction
