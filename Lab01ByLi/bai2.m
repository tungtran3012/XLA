# Thuc hien so khop histogram de nhan duoc anh co histogram gan khop voi anh con lai nhat
image_1 = imread("day.jpg");
image_2 = imread("landscape.jpg");
image = histogram_matching(image_1, image_2);
imshow(image);

# Tang 2 lan gamma sau do giam di 2 lan gamma
image_increase_2_gamma = change_gamma(image, 2);
image_changed_gamma = change_gamma(image_increase_2_gamma, 1/2);

subplot(1,2,1), imshow(image);
subplot(1,2,2), imshow(image_changed_gamma);