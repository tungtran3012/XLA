function Cau02
  J=imread("lionHSV.jpg");
  
  J_hue=J(:,:,1);
  J_sat=J(:,:,2);
  J_val=J(:,:,3);
  
  J_hue_in_double = double(J_hue) / double(max(J_hue(:)));
  B = (J_hue_in_double>0.22 & J_hue_in_double<0.45);
  imshow(B);
endfunction
