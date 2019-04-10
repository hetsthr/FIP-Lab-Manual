% =============================Practical 7=================================
%% ------------------------------------------------------------------------
% 1.RGB image or colormap to Grayscale
% -------------------------------------------------------------------------
I = imread('images/office_3.jpg');
I_gray = rgb2gray(I);
figure;
subplot(1,2,1);
imshow(I);
title('RGB Image');
subplot(1,2,2);
imshow(I_gray);
title('Gray Image');
%% ------------------------------------------------------------------------
% 2.Indexed image to RGB and vice versa.
% -------------------------------------------------------------------------
I = imread('images/office_3.jpg');
[I_index,map] = rgb2ind(I,32);
I_rgb = ind2rgb(I_index,map);
figure;
subplot(1,3,1);
imshow(I);
title('Original');
subplot(1,3,2);
imshow(I_index);
title('Indexed Image');
subplot(1,3,3);
imshow(I_rgb);
title('RGB from Indexed');
%% ------------------------------------------------------------------------
% 3.Indexed image to Grayscale and vice versa.
% -------------------------------------------------------------------------
I = imread('images/eight.tif');
[I_index,map] = gray2ind(I,32);
I_gray = ind2gray(I_index,map);
figure;
subplot(1,3,1);
imshow(I);
title('Original');
subplot(1,3,2);
imshow(I_index);
title('Indexed Image');
subplot(1,3,3);
imshow(I_gray);
title('Gray from Indexed');
%% ------------------------------------------------------------------------
% 4.Grayscale or Binary image to indexed image
% -------------------------------------------------------------------------
I = imread('images/circles.png');
[I_index,map] = gray2ind(I,32);
figure;
subplot(1,2,1);
imshow(I)
title('Original Binary');
subplot(1,2,2);
imshow(I_index);
title('Indexed Image');
%% ------------------------------------------------------------------------
% 5.Grayscale image/Indexed image/Truecolor image to binary image
% -------------------------------------------------------------------------
I_gray = imread('images/cameraman.tif');
I_color = imread('images/office_3.jpg');
I_grayBinary = im2bw(I_gray,0.4);
I_colorBinary = im2bw(I_color,0.4);
figure;
subplot(2,2,1);
imshow(I_gray)
title('Original Grayscale');
subplot(2,2,2);
imshow(I_grayBinary);
title('Binary Image');
subplot(2,2,3);
imshow(I_color)
title('Original Color');
subplot(2,2,4);
imshow(I_colorBinary);
title('Binary Image');
%% ------------------------------------------------------------------------
% 6.Read an RGB image and separate the R,G and B components from it. 
%   Convert the RGB image to HSV image and separate out the H,S and V 
%   components from it.
% -------------------------------------------------------------------------
I = imread('images/lena.tiff');
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
I_hsv = rgb2hsv(I);
H = I_hsv(:,:,1);
S = I_hsv(:,:,2);
V = I_hsv(:,:,3);

figure;
subplot(2,4,1);
imshow(I);
title('Original');
subplot(2,4,2);
imshow(R);
title('Red');
subplot(2,4,3);
imshow(G);
title('Green');
subplot(2,4,4);
imshow(B);
title('Blue');
subplot(2,4,5);
imshow(I_hsv);
title('HSV Image');
subplot(2,4,6);
imshow(H);
title('Hue');
subplot(2,4,7);
imshow(S);
title('Saturation');
subplot(2,4,8);
imshow(V);
title('Value / Intensity');
