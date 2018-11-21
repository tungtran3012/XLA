# 1. Doc anh I,J va hien len vao mot khung hinh
I = imread("lion.jpg");
J = imread("lionHSV.jpg");
  
subplot(1,2,1), imshow(I);
subplot(1,2,2), imshow(J);

# 2. Bien doi anh J de nhan duoc anh binary
J_h = J(:,:,1);
J_s = J(:,:,2);
J_v = J(:,:,3);

J_h_normalize = double( J_h ) / double(max( J_h(:) ) );
binary_image = ( J_h_normalize>0.22 & J_h_normalize<0.45 );
imshow(binary_image);

# 3. Xu ly nen xanh trong buc anh
data = load("data.txt");
v_t = data(:,1:3);
v_b = data(:,4);

K = chromakeying(v_t, v_b, size(I));
subplot(1,2,1), imshow(I);
subplot(1,2,2), imshow(K);
