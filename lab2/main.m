I=imread('GreenVietnam.png');
h=[0,-1,0;-1,4,-1;0,-1,0];

%{
//Bai 1.1
S=bai1(I,h);
subplot(4,2,1),imshow(I),title('Image I');
subplot(4,2,2),imshow(S),title('Image S');

hist_I=zeros(256,3);
hist_S=zeros(256,3);
for b= 1:3
  for k=0:255
      hist_I(k+1,b)=sum(sum(I(:,:,b)==k));
      hist_S(k+1,b)=sum(sum(S(:,:,b)==k));
  endfor  
endfor  

subplot(4,2,3),plot(hist_I(:,1)),title('Image hist I');
subplot(4,2,5),plot(hist_I(:,2)),title('Image hist I');
subplot(4,2,7),plot(hist_I(:,3)),title('Image hist I');

subplot(4,2,4),plot(hist_S(:,1)),title('Image hist I');
subplot(4,2,6),plot(hist_S(:,2)),title('Image hist I');
subplot(4,2,8),plot(hist_S(:,3)),title('Image hist I');

//Bai 1.3
I=Pixelization(I,s);



%}
K=Bai2('foreground.png','background.png');
imshow(K);
