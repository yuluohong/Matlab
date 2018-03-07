img =imread('triangle.jpg');
 h = fspecial('gaussian',[13,13],7);
 %imshow(img);
 imgde=imfilter(img,h,'replicate');
 imshow(imgde)
 imgre = deconvreg(imgde,h);
 %imshow(imgre);