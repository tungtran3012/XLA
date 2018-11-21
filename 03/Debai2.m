function Debai2
  I=imread("fence.png");
  G=imread("noiseSP.png");
  %subplot(1,2,1),imshow(I);
  %subplot(1,2,2),imshow(G);
  
  [r,c,~]=size(I);
  %3 kenh mau cua anh N voi Nb=Ib+G
  %G chi co 1 kenh mau, I co 3 kenh mau
  n1=I(:,:,1)+G;
  n2=I(:,:,2)+G;
  n3=I(:,:,3)+G;
  
  imgN=cat(3,n1,n2,n3);
  imshow(imgN);
endfunction
