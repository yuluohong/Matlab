f=imread('triangle.jpg');     %????????????A1?JPEG?????
imshow(f);            %????????   
J=fftshift(fft2(f));      %????????????????????????   
figure;
imshow(log(abs(J)),[8,10]);

