clc
close all
clear all
A1=imread('C:\Users\RADHAPRIYA\Documents\mycreate\cut2.jpg');
    B=imnoise(A1,'salt & pepper',0.2);
    r=medfilt2(B(:,:,1),[3 3]);
    g=medfilt2(B(:,:,2),[3 3]);
    b=medfilt2(B(:,:,3),[3 3]);
    K=cat(3,r,g,b);
    T=rgb2gray(K);
    A=rgb2gray(B);
    h2=1/25*ones(5,5);
    B2=conv2(A,h2,'same');
    fgauss=fspecial('gaussian',[25,25],4.0);
    filtim=imfilter(A,fgauss,'symmetric','conv');
    figure;
    subplot(2,3,1),imshow(A1);title('original image');
    subplot(2,3,2),imshow(B);title('noise image of salt & pepper');
    subplot(2,3,3),imshow(A);title('graysacle image');
    subplot(2,3,4),imshow(T);title('median filter');
    subplot(2,3,5),imshow(uint8(B2));title('average filter');
    subplot(2,3,6),imshow(filtim);title('gaussian filter');
