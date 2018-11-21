# Read image
chua_mot_cot_origin = imread("chuamotcot.jpg");

# Show image
imshow(chua_mot_cot_origin)

# Get 3 bands color of image
red = chua_mot_cot_origin(:,:,1);
green = chua_mot_cot_origin(:,:,2);
blue = chua_mot_cot_origin(:,:,3);

# Calculate value image & show histogram
value_image = red/3 + green/3 + blue/3;
imshow(value_image)
hist_image = histogram(value_image);
stem(hist_image)

# Calculate luminance image & show histogram
luminance_image = red*0.299 + green*0.587 + blue*0.114;
imshow(luminance_image)
hist_image = histogram(luminance_image);
stem(hist_image)