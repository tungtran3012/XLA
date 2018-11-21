function Cau02
  img1=imread("image1.jpg");
  img2=("images2.jpg");
  img=HistMatc(img1,img2);
  imshow(img);
  
  image_x2_gamma=Gamma_change(img,2);
  image_gamma_other=Gamma_change(image_x2_gamma,1/2);
  
  subplot(2,2,1);
  imshow(img);

  subplot(2,2,3);
  imshow(image_gamma_other);
endfunction
