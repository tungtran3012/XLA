function img_gamma=Gamma_change(img,gamma)
  img_gamma=255*((double(img)./255.^(1/gamma));
  img_gamma=uint8(img_gamma);
endfunction
