# Read image
chua_mot_cot_origin = imread("chuamotcot.jpg");

# Show image
imshow(chua_mot_cot_origin)

# Get 3 bands color of image
red = chua_mot_cot_origin(:,:,1);
green = chua_mot_cot_origin(:,:,2);
blue = chua_mot_cot_origin(:,:,3);

# Show histogram's 3 bands color of image
[r_hist,g_hist,b_hist] = histogram_rgb(chua_mot_cot_origin);
stem(r_hist);
set(r_hist, "color", "r");
hold on
stem(r_hist);
set(g_hist, "color", "gr");
hold on
stem(b_hist);
set(b_hist, "color", "b");

# Histogram equalization
image_equalized = histogram_equalization(chua_mot_cot_origin);
image_equalized = uint8(chua_mot_cot_origin);
imwrite(image_equalized,"equalized.jpg","jpg","Quality","100");
imshow(image_equalized);