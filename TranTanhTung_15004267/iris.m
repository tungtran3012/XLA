pkg load image;
X= imread('iris.jpg');
X=imresize(X,[2048 2048],'bicubic');
[r, c, d] = size(X);
options = [r r 3]; 
tf = maketform('custom', 2, 2,[],@iris_inverse, options);
newImage = imtransform(X, tf);
imshow(newImage);  

