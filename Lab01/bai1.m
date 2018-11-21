function bai1 (fileI, fileJ)
  img = imread(fileI);
  imgHSV = imread(fileJ);
  
  subplot(1,2,1), imshow(img);
  subplot(1,2,2), imshow(imgHSV);
endfunction
