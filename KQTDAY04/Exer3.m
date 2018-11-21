function Exer3
  A=imread('Image.png');
  A_1=A(:,:,1);
  disp("matrix A_1");
  disp(A_1);
  X=A_1;
  
  H=randi([1 5],3,3);
  imgInfo=imfinfo('Image.png');
  A_ex=zeros(imgInfo.Height+2,imgInfo.Width+2);
  
  A_ex(2:(imgInfo.Height+1),2:(imgInfo.Width+1))=X;
  disp("matrix A-extend");
  disp(A_ex);
  
  for j=1:imgInfo.Height
    for i=1:imgInfo.Width
      I=A_ex(j:(j+2),i:(i+2));
      I=I*H;
      X(j,i)=sum(sum(I));
    endfor
  endfor
  
  X(X>255)=255;
  disp("Ma tran sau khi tinh tich chap");
  disp(X);
  imshow(X);
endfunction
