function img3=MatHis(I,J,b)
  for i=1:b
    img3(:,:,i)=MatHisIn1Chan(I(:,:,i),J(:,:,i));
  endfor
endfunction
