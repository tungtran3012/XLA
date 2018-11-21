function img=HistMatc(img1,img2)
  [r,c,b]=size(img1);
  img=uint8(zeros(r,c,b));
  [lut_r,lut_g,lut_b]=LUT_rgb(img1,img2);
  for g=0:255
    img(:,:,1)+=lut_r(g+1)*(img_1(:,:,1)==g);
    img(:,:,2)+=lut_g(g+1)*(img_1(:,:,2)==g);
    img(:,:,3)+=lut_b(g+1)*(img_1(:,:,2)==g);
  endfor
endfunction

function [lut_r,lut_g,lut_b]=LUT_rgb(img1,img2)
  [r_pdf_1, g_pdf_1, b_pdf_1] = Calc_pdf(image_1);
	[r_pdf_2, g_pdf_2, b_pdf_2] = Calc_pdf(image_2);

	lut_r = Lut_hist(r_pdf_1, r_pdf_2);
	lut_g = Lut_hist(g_pdf_1, g_pdf_2);
	lut_b = Lut_hist(b_pdf_1, b_pdf_2);
endfunction

function LUT=Lut_hist(pdfi,pdfj)
  gJ=0;
  for gI=0:255
    while(pdfj(gJ+1)<pdfi(gI+1)&&gJ<255)
      gJ=gJ+1;
    endwhile
    LUT(gI+1)=gJ;
  endfor
endfunction

function [rPDF,gPDF,bPDF]=Calc_pdf(img)
  [r,c,b]=size(img);
  A=r*c;
  [rHist,gHist,bHist]=
endfunction
