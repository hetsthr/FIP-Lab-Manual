%==============================Practical 3=================================
%% ------------------------------------------------------------------------
% 1.Produce image negative from an image
% -------------------------------------------------------------------------
I = imread('images/cameraman.tif');
I_inv = 255 - I;
figure;
subplot(1,2,1);
imshow(I);
title('Original');
subplot(1,2,2);
imshow(I_inv);
title('Inverted');
%% ------------------------------------------------------------------------
% 2.To increase the contrast in a low contrast grayscale image and display
%   the histogram of the output image. Compare the histogram before and 
%   after intensity adjustments.
% -------------------------------------------------------------------------
I = imread('images/pout.tif');
contrast_I = imadjust(I, [0.3 0.7], []);
figure;
subplot(2,2,1);
imshow(I);
title('Original');
subplot(2,2,2);
imhist(I);
title('Original Histogram');
subplot(2,2,3);
imshow(contrast_I);
title('Contrast Enhanced');
subplot(2,2,4);
imhist(contrast_I);
title('Contrast Histogram');
%% ------------------------------------------------------------------------
% 3.Display images before and after gamma correction. Compare the 
%   histogram before and after gamma correction.
% -------------------------------------------------------------------------
I=imread('eight.tif');
gamma_I=imadjust(I,[],[],0.3);
figure;
subplot(2,2,1);
imshow(I);
title('ORIGINAL');
subplot(2,2,3);
imshow(gamma_I);
title('GAMMA=0.3');
subplot(2,2,2);
imhist(I);
title('Original Histogram');
subplot(2,2,4);
imhist(gamma_I);
title('GAMMA=0.3 Histogram');
%% ------------------------------------------------------------------------
% 4.Perform Histogram Equilization
% -------------------------------------------------------------------------
I = imread('images/pout.tif');
histeq_I=histeq(I);
figure;
subplot(2,2,1);
imshow(I);
title('ORIGINAL');
subplot(2,2,2);
imhist(I);
title('HISTOGRAM ORIGINAL');
subplot(2,2,3);
imshow(histeq_I);
title('HISTEQ IMAGE');
subplot(2,2,4);
imhist(histeq_I);
title('HISTOGRAM EQUALIZED');