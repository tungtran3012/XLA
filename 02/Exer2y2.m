function Exer2y2
  I=imread("foreground.png");
  I_1=I(:,:,1);
  I_2=I(:,:,2);
  I_3=I(:,:,3);
  
  subplot(3,1,1);
  imhist(I_1);
  title("His Red");

  subplot(3,1,3);
  imhist(I_2);
  title("His Green");
  
  subplot(3,1,2);
  imhist(I_3);
  title("His Blue");
  
endfunction
