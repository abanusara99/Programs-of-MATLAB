I=imread('C:\Users\Public\Pictures\Sample Pictures\Pink.png');
imshow(I)
M=rgb2gray(I);
BW1=edge(M,'canny');
BW2=edge(M,'prewitt');
figure
subplot(2,2,1),imshow(I);title('RGB image');
subplot(2,2,2),imshow(M);title('gray image');
subplot(2,2,3),imshow(BW1);title('canny edge detection');
subplot(2,2,4),imshow(BW2);title('prewitt edge detection');