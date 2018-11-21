function Exer2
  I=imread("Image2.jpg");
  I_1=I(:,:,1);
  I_2=I(:,:,2);
  I_3=I(:,:,3);
  
  J=cat(3,I_1,I_2*2,I_3*0);
  J_1=J(:,:,1);
  J_2=J(:,:,2);
  J_3=J(:,:,3);
  imshow(J);
  
  n=5;
  X=zeros(n);
  Y=zeros(n);
  imgIinfo=imfinfo('Image.png');
  for i=1:n
    X(i)=randi([1 imgIinfo.Height],1);  
  endfor
  for j=1:n
    X(j)=randi([1 imgIinfo.Width],1);  
  endfor
  A=J_1(X,Y)./I_1(X,Y);
endfunction
