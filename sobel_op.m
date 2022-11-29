A=imread('C:\Users\RADHAPRIYA\Documents\mycreate\cut2.jpg');
B=rgb2gray(A);
C=double(A);

for i=1:size(C,1)-2
for j=1:size(C,2)-2
Gx=((2*C(i+2,j+1)+C(i+2,j)+C(i+2,j+2))-(2*C(i,j+1)+C(i,j)+C(i,j+2)));
Gy=((2*C(i+1,j+2)+C(i,j+2)+C(i+2,j+2))-(2*C(i+1,j)+C(i,j)+C(i+2,j)));
B(i,j)=sqrt(Gx.^2+Gy.^2);
end
end
figure
subplot(1,2,1),imshow(A);title('original image');
subplot(1,2,2),imshow(B);title('sobel operator');
