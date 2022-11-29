
clc;
clear all;
close all;
I = imread('C:\Users\RADHAPRIYA\Documents\mycreate\cut2.jpg');
% Y = I;
YCbCr = rgb2ycbcr(I);
Y = YCbCr(:,:, 1);
[h, w] = size(Y);
r = h/8;
c = w/8;
s = 1;
q50 = [16 11 10 16 24 40 51 61;
       12 12 14 19 26 58 60 55;
       14 13 16 24 40 57 69 56;
       14 17 22 29 51 87 80 62;
       18 22 37 56 68 109 103 77;
       24 35 55 64 81 104 113 92;
       49 64 78 87 103 121 120 101;
       72 92 95 98 112 100 103 99];
%    COMPRESSION
for i=1:r
    e = 1;
    for j=1:c
        block = Y(s:s+7,e:e+7);
        cent = double(block) - 128;
        for m=1:8
            for n=1:8
                if m == 1
                    u = 1/sqrt(8);
                else
                    u = sqrt(2/8);
                end
                if n == 1
                    v = 1/sqrt(8);
                else
                    v = sqrt(2/8);
                end
                comp = 0;
                for x=1:8
                    for y=1:8
                        comp = comp + cent(x, y)*(cos((((2*(x-1))+1)*(m-1)*pi)/16))*(cos((((2*(y-1))+1)*(n-1)*pi)/16));
                    end
                end
                  f(m, n) = v*u*comp;
              end
          end
          for x=1:8
              for y=1:8
                  cq(x, y) = round(f(x, y)/q50(x, y));
              end
          end
          Q(s:s+7,e:e+7) = cq;
          e = e + 8;
      end
      s = s + 8;
  end
 
imwrite(Y, 'C:\Users\RADHAPRIYA\Documents\mycreate\input.jpg');
imwrite(Q, 'C:\Users\RADHAPRIYA\Documents\mycreate\output4.jpg');
 
figure,
subplot(1,3,1),imshow(I),title('original Image');
subplot(1,3,2),imshow(YCbCr),title('ycbcr Image');
subplot(1,3,3),imshow('C:\Users\RADHAPRIYA\Documents\mycreate\output4.jpg'),title('Compressed Image');
return;
