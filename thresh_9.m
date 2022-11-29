I = imread('S:\abas\creation_img\Advice Post.png');
%Calculate a threshold using graythresh. The threshold is normalized to the range [0, 1].

graythresh(I);
level = 0.4941;
%Convert the image into a binary image using the threshold.

BW = im2bw(I,level);
%Display the original image next to the binary image.
figure;
subplot(1,2,1), imshow(I),title('Original Image');
subplot(1,2,2), imshow(BW),title('Threshold-based Segmented Image');

