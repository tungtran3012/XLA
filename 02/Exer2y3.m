function Exer2y3
  pkg load image;
  I=imread("foreground.png");
  J=imread("background.png");
  
  [ row ,col,~ ] = size(I);
  J_T=imresize(J, [ row col ]);
  
  J_T1=J_T(:,:,1);
  J_T2=J_T(:,:,2);
  J_T3=J_T(:,:,3);
  
  I_1=I(:,:,1);
  I_2=I(:,:,2);
  I_3=I(:,:,3);
  
  k=120;
  T_1=CalC(I_1);
  T_2=CalC(I_2);
  T_3=CalC(I_3);
  
  M=zeros(row,col);
  M=T_1.*T_2.*T_3;
  
  N=not(M);
  
  M=uint8(M);
  N=uint8(N);
  K=zeros(row,col,3);
  
  K_1=M.*J_T1+N.*I_1;
  K_2=M.*J_T2+N.*I_2;
  K_3=M.*J_T3+N.*I_3;
  
  imgK=cat(3,K_1,K_2,K_3);
  imshow(imgK);
endfunction

function m=CalC(I)
  m=zeros(size(I));
  [N ,D]=size(I);
  for i=1:N
    for j=1:D
      if(I(i,j)>120)
        m(i,j)=1;
      elseif (I(i,j)<=120)
        m(i,j)=0;
      end
    endfor
  endfor
endfunction
