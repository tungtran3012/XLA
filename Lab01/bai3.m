function bai3 (fileName, dataFile)
  img = imread(fileName); # I - color image
  data = load(dataFile);
  vT = data(:,1:3);
  vB = data(:,4);
  
  K = chromaKeying (img, vT, vB);
  
  subplot(1,2,1), imshow(img);
  subplot(1,2,2), imshow(uint8(K));
endfunction

function K = chromaKeying (img, vT, vB)  
  id = find(vB);
  [m, n, b] = size(img);
  
  for b = 1:3
    vT(id,b) = 0; #double indexing: vT(:,b)(id) = 0
    K(:,:,b) = zeros(m,n);
    for j = 1:n
      count = 1;
      for i = ((j-1) * m + 1):(j * m)
        #K(:,:,b)(count, j) = vT(:, b)(i);
        K(count,j,b) = vT(i, b);
        count = count + 1;
      endfor
    endfor
  endfor
endfunction