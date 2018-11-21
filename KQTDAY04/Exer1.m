function Exer1
  n=5;
  A=randi([1 50],n,n);
  
  
  B=eye(n);
  if(det(A)==0)
  else
    for i=1:n
      for j=1:n
        if (i!=j)
          B(j,:)=B(j,:)-(A(j,i)/A(i,i))*B(i,:);
          A(j,:)=A(j,:)-(A(j,i)/A(i,i))*A(i,:);
        endif
      endfor
    endfor
   end
    
    disp("A in step 1");
    disp(A);
    disp("B in step 1");
    disp(B);
    
    for(k=1:n)
      B(k,:)=B(k,:)/A(k,k);
      A(k,:)=A(k,:)/A(k,k);
    endfor
    
    disp("A in step 2");
    disp(A);
    disp("B in step 2");
    disp(B);
    disp("B in function");
    B_1=inverse(A);
    disp(B_1);
endfunction
