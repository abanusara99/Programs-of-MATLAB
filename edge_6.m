I = imread('S:\abas\creation_img\Advice Post.png');
M=rgb2gray(I);
BW1=edge(M,'Canny');
BW2=edge(M,'Prewitt');
figure,
       subplot(2,2,1),imshow(I);title('RGB image');
       subplot(2,2,2),imshow(M);title('GRAY SCALE image');
       subplot(2,2,3),imshow(BW1);title('Canny Edge Detection');
       subplot(2,2,4),imshow(BW2);title('Prewitt Edge Detection');