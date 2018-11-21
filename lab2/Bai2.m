function K = Bai2 (linkI, linkJ)
I=imread(linkI);
J=imread(linkJ);
%{
//Hien thi histogram cua anh
subplot(4,2,1),imshow(I);
subplot(4,2,2),imshow(J);
hist_I=zeros(256,3);
for b=1:3
    
    for k=0:255
        hist_I(k+1,b) = sum(sum( I(:,:,b) ==k ));
    endfor  
endfor  

subplot(4,2,3),plot(hist_I(:,1));
subplot(4,2,5),plot(hist_I(:,2));
subplot(4,2,7),plot(hist_I(:,3));

%}
K=CombineImages(I,J);

endfunction
