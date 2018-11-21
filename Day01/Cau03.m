function Cau03
  I=imread("lion.jpg");
  dataCK=load("data.txt");
  vt=dataCK(:,1:3);
  vb=dataCK(:,4);
  
  CK=ChromaKeyring(I,vt,vb);
  subplot(2,2,1);
  imshow(I);
  title("Anh goc");

  subplot(2,2,3);
  imshow(uint8(CK));
  title("Anh xu ly phong nen xanh");
  
endfunction
