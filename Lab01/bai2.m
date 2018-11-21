function bai2 (fileNameJ)
  imgJ = imread(fileNameJ); # J - HSV image

  J_h = imgJ(:,:,1);
  J_s = imgJ(:,:,2);
  J_v = imgJ(:,:,3);
  
  J_h_double = double(J_h) / double(max(J_h(:)));
  B = (J_h_double>0.22 & J_h_double<0.45);
  imshow(B);
endfunction