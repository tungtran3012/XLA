function CK=ChromaKeyring(I,vt,vb)
  id=find(vb);
  [m,n,b]=size(I);
  
  for b=1:3
    vt(id,b)=0;
    CK(:,:,b)=zeros(m,n);
    for j=1:n
      count=1;
      for i=((j-1)*m+1):(j*m)
        CK(count,j,b)=vt(i,b);
        count=count+1;
      endfor
    endfor
  endfor
endfunction
