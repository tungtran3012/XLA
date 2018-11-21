function pdfimg=PDF(img)
  mat=zeros(256,1);
  for i=1:256
    mat(i)=sum((img==(i-1))(:));
  endfor
  cdf=mat/numel(img);
  pdfimg=cumsum(cdf);
endfunction
