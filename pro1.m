close all;
clear all;
clc;
I=imread('C:\Users\RADHAPRIYA\Documents\mycreate\redy.jpg');
imshow(I)
title('original image');
gray=rgb2gray(I);
A=gray;
FG=gray;
[r,c]=size(FG);
for i=1:r
    for j=1:c
        f=FG(i,j);
        if f<=64
            FG(i,j)=60;
        elseif f>65&&f<=128
            FG(i,j)=120;
        elseif f>128 && f<=192
            FG(i,j)=190;
        elseif f>192&&f<256
            FG(i,j)=250;
        end
    end
end
for i=1:r
        for j=1:c
            f=gray(i,j);
            if f<=127
                gray(i,j)=0;
            elseif f>127&&f<256
                gray(i,j)=255;
            end
        end
end
    figure;
    subplot(2,2,1);imshow(I);title('original image');
    subplot(2,2,2);imshow(FG);title('four level quantization');
    subplot(2,2,3);imshow(A);title('gray');
    subplot(2,2,4);imshow(gray);title('two level quantization');
    



    