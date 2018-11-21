function img = MatHisIn1Chan(I_3,J_3)
  pdf_I=PDF(I_3);
  pdf_J=PDF(J_3);
  
  LUT=zeros(256,1);
  gJ=0;
  for gI=0:255
    while((pdf_J(gJ+1)<pdf_I(gI+1))&&gJ<255)
          gJ=gJ+1;
    endwhile      
    LUT(gI+1)=gJ;
  endfor
  img=LUT(I_3+1);
endfunction
