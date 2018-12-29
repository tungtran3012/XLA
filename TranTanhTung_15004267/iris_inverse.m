function U = iris_inverse(X, T)

  sizeImg = T.tdata(1:2);
  exponent = T.tdata(3);
  origin = (sizeImg+1)./2;
  scale = sizeImg./2;

  x = (X(:,1)-origin(1))/scale(1);
  y = (X(:,2)-origin(2))/scale(2);
  R = sqrt(x.^2+y.^2);
  theta = atan2(y, x);

  cornerScale = min(abs(1./sin(theta)), abs(1./cos(theta)));
  cornerScale(R < 1) = 1;
  R = cornerScale.*R.^exponent;

  x = scale(1).*R.*cos(theta)+origin(1);
  y = scale(2).*R.*sin(theta)+origin(2);
  U = [x y];

endfunction