function Exer2y1
  I=imread("foreground.png");
  J=imread("background.png");
  
  [ row ,col,~ ] = size(I);
  J_T=imresize(J, [ row col ]);
  [ row1,col1,~ ] = size(J_T);
  
  ##disp(row);
  ##disp(row1);
  
  subplot(2,2,1);
  imshow(I);
  title("foreground");

  subplot(2,2,3);
  imshow(J_T);
  title("background resize");
endfunction
