day_origin = imread("day.jpg");
day_gamma_changed = change_gamma(day_origin,2);

image_color_correct = color_correction(day_origin, day_gamma_changed,128);

kernel = [-1,-1,-1;-1,8,-1;-1,-1,-1];
day_gray = rgb_to_gray(day_origin);
result_image = convolution_image(day_gray,kernel);

subplot(2,2,1), imshow(day_origin), title("Origin");
subplot(2,2,2), imshow(day_gamma_changed), title("Gamma changed");
subplot(2,2,3), imshow(image_color_correct), title("Image color correction");
subplot(2,2,4), imshow(result_image), title("Result of Convolution Image");