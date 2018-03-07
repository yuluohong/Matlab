I=imread('2.jpg');

   I=rgb2gray(I);

J=I;
subplot(231),imshow(I);title('???');

k1=medfilt2(J);            %??3*3??????
k2=medfilt2(J,[5,5]);      %??5*5??????
k3=medfilt2(J,[7,7]);      %??7*7??????
k4=medfilt2(J,[9,9]);      %??9*9??????
subplot(232),imshow(k1);title('3*3');

subplot(234),imshow(k3);title('7*7');
subplot(235),imshow(k4);title('9*9 ');