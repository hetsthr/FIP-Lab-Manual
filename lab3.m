%==============================Practical 4=================================
%% ------------------------------------------------------------------------
% 1.Illustrate the effects of smoothing with averaging filter masks of 
%   sizes 8,16,64,128.
% -------------------------------------------------------------------------
I = imread('images/eight.tif');
filter_8 = ones(8,8) / (8*8);
filter_16 = ones(16,16) / (16*16);
filter_64 = ones(64,64) / (64*64);
filter_128 = ones(128,128) / (128*128);
I_8 = imfilter(I,filter_8);
I_16 = imfilter(I,filter_16);
I_64 = imfilter(I,filter_64);
I_128 = imfilter(I,filter_128);
figure;
imshow(I);
title('Original');
subplot(2,2,1);
imshow(I_8);
title('8x8 Filter');
subplot(2,2,2);
imshow(I_16);
title('16x16 filter mask');
subplot(2,2,3);
imshow(I_64);
title('64x64 filter mask');
subplot(2,2,4);
imshow(I_128);
title('128x128 filter mask');
%% ------------------------------------------------------------------------
% 2.Filter the image with median filter and averaging filter when the image
%   is corrupted by salt and pepper noise.
%% ------------------------------------------------------------------------
I = imread('images/cameraman.tif');
I = imnoise(I, 'salt & pepper');
median_Filter = vision.MedianFilter([5 5]);
I_median = step(median_Filter, I);
filter_5 = ones(5,5) / 25;
I_5 = imfilter(I,filter_5);
subplot(1,3,1);
imshow(I);
title('Salt and Pepper Noise Image');
subplot(1,3,2);
imshow(I_median);
title('Median Filtered Image');
subplot(1,3,3);
imshow(I_5);
title('Averaging Filtered Image');