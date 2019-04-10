%==============================Practical 4=================================
%% ------------------------------------------------------------------------
%   Write a matlab program to perform Low Pass Filtering and High Pass 
%   Filtering with cut of frequencies set at radius of 5,15,30,80 for the 
%   following filters. Plot input image, the frequency spectrum of input 
%   image & filter and output image.
% -------------------------------------------------------------------------
I = imread('images/cameraman.tif');
I = double(I);
c = size(I);
%% ------------------------------------------------------------------------
% 1. Ideal Low Pass Filter
% -------------------------------------------------------------------------

filter_5 = ideal_lowPass(5,c); 
filter_15 = ideal_lowPass(15,c);
filter_30 = ideal_lowPass(30,c);
filter_80 = ideal_lowPass(80,c);

I_freq = fft2(I);
I_freq = fftshift(I_freq);

I_filtered_5 = I_freq.*filter_5;
I_mag_5 = abs(ifft2(I_filtered_5));

I_filtered_15 = I_freq.*filter_15;
I_mag_15 = abs(ifft2(I_filtered_15));

I_filtered_30 = I_freq.*filter_30;
I_mag_30 = abs(ifft2(I_filtered_30));

I_filtered_80 = I_freq.*filter_80;
I_mag_80 = abs(ifft2(I_filtered_80));

figure;
subplot(4,4,1);
imshow(uint8(I));
title('Original');
subplot(4,4,2);
imagesc(log(1+abs(I_freq)));
title('Frequency spectrum of Input Image');
subplot(4,4,3);
imshow(filter_5);
title('Frequency spectrum of Ideal Filter f0 = 5');
subplot(4,4,4);
imshow(uint8(I_mag_5));
title('Output Image');

subplot(4,4,7);
imshow(filter_15);
title('Frequency spectrum of Ideal Filter f0 = 15');
subplot(4,4,8);
imshow(uint8(I_mag_15));
title('Output Image');

subplot(4,4,11);
imshow(filter_30);
title('Frequency spectrum of Ideal Filter f0 = 30');
subplot(4,4,12);
imshow(uint8(I_mag_30));
title('Output Image');

subplot(4,4,15);
imshow(filter_80);
title('Frequency spectrum of Ideal Filter f0 = 80');
subplot(4,4,16);
imshow(uint8(I_mag_80));
title('Output Image');

%% ------------------------------------------------------------------------
% 2. Gaussian Low Pass Filter
% -------------------------------------------------------------------------
filter_5 = gaussian_lowPass(5,c); 
filter_15 = gaussian_lowPass(15,c);
filter_30 = gaussian_lowPass(30,c);
filter_80 = gaussian_lowPass(80,c);

I_freq = fft2(I);
I_freq = fftshift(I_freq);

I_filtered_5 = I_freq.*filter_5;
I_mag_5 = abs(ifft2(I_filtered_5));

I_filtered_15 = I_freq.*filter_15;
I_mag_15 = abs(ifft2(I_filtered_15));

I_filtered_30 = I_freq.*filter_30;
I_mag_30 = abs(ifft2(I_filtered_30));

I_filtered_80 = I_freq.*filter_80;
I_mag_80 = abs(ifft2(I_filtered_80));

figure;
subplot(4,4,1);
imshow(uint8(I));
title('Original');
subplot(4,4,2);
imagesc(log(1+abs(I_freq)));
title('Frequency spectrum of Input Image');
subplot(4,4,3);
imshow(filter_5);
title('Frequency spectrum of Gaussian Filter f0 = 5');
subplot(4,4,4);
imshow(uint8(I_mag_5));
title('Output Image');

subplot(4,4,7);
imshow(filter_15);
title('Frequency spectrum of Gaussian Filter f0 = 15');
subplot(4,4,8);
imshow(uint8(I_mag_15));
title('Output Image');

subplot(4,4,11);
imshow(filter_30);
title('Frequency spectrum of Gaussian Filter f0 = 30');
subplot(4,4,12);
imshow(uint8(I_mag_30));
title('Output Image');

subplot(4,4,15);
imshow(filter_80);
title('Frequency spectrum of Gaussian Filter f0 = 80');
subplot(4,4,16);
imshow(uint8(I_mag_80));
title('Output Image');
%% ------------------------------------------------------------------------
% 2. Buterworth Low Pass Filter
% -------------------------------------------------------------------------
filter_5 = butterWorth_lowPass(5,c); 
filter_15 = butterWorth_lowPass(15,c);
filter_30 = butterWorth_lowPass(30,c);
filter_80 = butterWorth_lowPass(80,c);

I_freq = fft2(I);
I_freq = fftshift(I_freq);

I_filtered_5 = I_freq.*filter_5;
I_mag_5 = abs(ifft2(I_filtered_5));

I_filtered_15 = I_freq.*filter_15;
I_mag_15 = abs(ifft2(I_filtered_15));

I_filtered_30 = I_freq.*filter_30;
I_mag_30 = abs(ifft2(I_filtered_30));

I_filtered_80 = I_freq.*filter_80;
I_mag_80 = abs(ifft2(I_filtered_80));

figure;
subplot(4,4,1);
imshow(uint8(I));
title('Original');
subplot(4,4,2);
imagesc(log(1+abs(I_freq)));
title('Frequency spectrum of Input Image');
subplot(4,4,3);
imshow(filter_5);
title('Frequency spectrum of Butterworth Filter f0 = 5');
subplot(4,4,4);
imshow(uint8(I_mag_5));
title('Output Image');

subplot(4,4,7);
imshow(filter_15);
title('Frequency spectrum of Butterworth Filter f0 = 15');
subplot(4,4,8);
imshow(uint8(I_mag_15));
title('Output Image');

subplot(4,4,11);
imshow(filter_30);
title('Frequency spectrum of Butterworth Filter f0 = 30');
subplot(4,4,12);
imshow(uint8(I_mag_30));
title('Output Image');

subplot(4,4,15);
imshow(filter_80);
title('Frequency spectrum of Butterworth Filter f0 = 80');
subplot(4,4,16);
imshow(uint8(I_mag_80));
title('Output Image');
