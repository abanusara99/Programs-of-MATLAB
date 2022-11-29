I = imread('C:\Users\RADHAPRIYA\Documents\mycreate\redy.jpg');
HSV = rgb2hsv(I);

Heq = histeq(HSV(:,:,3));
HSV_mod = HSV;
HSV_mod(:,:,3) = Heq;
RGB = hsv2rgb(HSV_mod);
     
HIST_IN = zeros([256 3]);
HIST_OUT = zeros([256 3]);

HIST_IN(:,1) = imhist(I(:,:,1),256); %RED
HIST_IN(:,2) = imhist(I(:,:,2),256); %GREEN
HIST_IN(:,3) = imhist(I(:,:,3),256); %BLUE

HIST_OUT(:,1) = imhist(RGB(:,:,1),256); %RED
HIST_OUT(:,2) = imhist(RGB(:,:,2),256); %GREEN
HIST_OUT(:,3) = imhist(RGB(:,:,3),256); %BLUE

mymap=[1 0 0; 0.2 1 0; 0 0.2 1];
figure,subplot(2,3,1),imshow(I);title('Before Histogram Equalization');
       subplot(2,3,2), imshow(HSV);title('HSV image');
       subplot(2,3,3),imshow(RGB);title('After Histogram Equalization');
       
       subplot(2,3,4),bar(HIST_IN);colormap(mymap);legend('RED CHANNEL','GREEN CHANNEL','BLUE CHANNEL');title('Before Applying Histogram Equalization');
       subplot(2,3,6),bar(HIST_OUT);colormap(mymap);legend('RED CHANNEL','GREEN CHANNEL','BLUE CHANNEL');title('After Applying Histogram Equalization'); 
       
