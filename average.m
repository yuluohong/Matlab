I=imread('2.jpg');
subplot(231)
imshow(I)

   I=rgb2gray(I);
I1=I;
%I1=imnoise(I,'salt & pepper',0.02);

imshow(I1)
title('1')
k1=filter2(fspecial('average',3),I1)/255;          %??3*3??????
k2=filter2(fspecial('average',5),I1)/255;          %??5*5??????

k3=filter2(fspecial('average',7),I1)/255;          %??7*7??????
k4=filter2(fspecial('average',9),I1)/255;          %??9*9??????
subplot(232),imshow(k1);title('3*3 ');
subplot(233),imshow(k3);title('7*7 ');
subplot(234),imshow(k4);title('9*9 ');


