function Cau01
  I=imread("lion.jpg");
  J=imread("lionHSV.jpg");

  subplot(2,2,1);
  imshow(I);
  title("Anh Lion");

  subplot(2,2,3);
  imshow(J);
  title("Anh Lion HSV");
endfunction