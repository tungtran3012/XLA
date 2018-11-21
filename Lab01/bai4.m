%{
  RGB to HSV
  - Su dung cong thuc trong sach Digital Image Processing (6.2.3)
  - File anh ket qua: "./ResultImages/mylionhsv.jpg"
%}

function bai4 (fileName)
  img = imread(fileName);
  K = imgHSV(double(img));
  
  imwrite(K, "./ResultImages/mylionhsv.jpg");
  
  #subplot(1,2,1), imshow(img);
  #subplot(1,2,2), imshow(K);
endfunction

function K = imgHSV(imgRGB)
  imgRGB = imgRGB / 255;
  K = zeros(size(imgRGB));
  
  c = sum(imgRGB, axis=3);
  # value
  K(:,:,3) = c / (sqrt(3));
  
  # saturation
  min_rgb = min(imgRGB, [], 3);
  s = 1 - ((3 ./ c) .* min_rgb);
  s(isnan(s)) = 0;
  K(:,:,2) = s;
    
  #hue
  r = imgRGB(:,:,1);
  g = imgRGB(:,:,2);
  b = imgRGB(:,:,3);
  theta_a = 1/2 * ((r - g) + (r - b));
  theta_b = sqrt((r-g).^2 + (r-b).*(g-b));
  theta = theta_a ./ theta_b;
  hue = (b>g) .* (2*pi - acos(theta)) + (b<=g) .* acos(theta);  
  hue(isnan(hue)) = 0;
  K(:,:,1) = hue./max(hue(:));
endfunction
