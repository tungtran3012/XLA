i = imread('meow.jpg');
img = rgb2gray(i);
kernel = [-1 -1 -1; -1 5 -1; -1 -1 -1];
% kernel = [0 -1 0; -1 5 -1; 0 -1 0];
im = myConvolution(img,kernel);
im2 = conv2(img,kernel,'same');

subplot(1,2,1), imshow(im), title('My con');
subplot(1,2,2), imshow(im2), title('Matalb');

function im = myConvolution(img,kernel)
    [a,k] = size(kernel);
    p=0;
	% rem Kiểm tra a%2==1 
    if rem(a,2)==1
        p=a/2-0.5;
    else 
        return;
    end
    
    image = zeros(size(img)+2*p);
    im = zeros(size(img));
    [M,N]=size(image);
    for i=p+1:M-p
       for j=p+1:N-p
           image(i,j) = img(i-p,j-p);
       end
    end
    
    for i=p+1:M-p
       for j=p+1:N-p
           cs = tich(i-p,j-p,image,kernel,k,p);
           
           if cs > 255
               im(i-p,j-p)=cs-255;
           elseif cs <0
               im(i-p,j-p)=cs+255; 
           else 
               im(i-p,j-p)=cs;
           end
           
           % im(i-p,j-p) = tich(i-p,j-p,image,kernel,k,p);
       end
    end
end

function c = tich(m,n,image,kernel,k,p)
   c=0;
   in1 = [m:m+k-p];
   in2 = [n:n+k-p];
   X = image(in1,:);
   X = X(:,in2);
   [a,b]=size(kernel);
   for i=1:a
      for j=1:b
          c = c + X(i,j)*kernel(i,j);
      end
   end
   % c=c/(k*k);
end
