clc
clear all
close all
I=imread('C:\Users\RADHAPRIYA\Documents\mycreate\cut2.jpg')
x=im2bw(rgb2gray(I));
subplot(2,2,1);
imshow(I);
title('Original Image');
a=x;
x=a;
ms=bwdist(x);
ms=255-uint8(ms);
subplot(2,2,2);
imshow(ms);
title('Image after applying Distance Transformation');
hs=watershed(ms);
ws=hs==0;
subplot(2,2,3);
imshow(a | ws);
title('Watershed Segmentation of the image');
subplot(2,2,4);
imshow(label2rgb(hs));
title('Visualization of different segments with different color');
