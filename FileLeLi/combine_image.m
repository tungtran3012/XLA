function [K,I_binary] = combine_image(foreground, background)
  [m, n, b] = size(background);
  I_binary = zeros(m, n);
  k = 120;
  I_binary = (foreground>k);
  M = zeros(m,n);
  M = I_binary(:,:,1) .* I_binary(:,:,2) .* I_binary(:,:,3);
  N = not(M);
  M = uint8(M);
  N = uint8(N);
  K = zeros(m,n,3);
  for b=1:3
    K(:,:,b) = M .* background(:,:,b) + N .* foreground(:,:,b);
  end
  K = uint8(K);
endfunction
