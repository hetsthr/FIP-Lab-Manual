%% Experiment 2 (Sampling and Quantization)
img = imread('cameraman.tif');
i = imfinfo('cameraman.tif');
subplot(1,2,1);
imshow(img);
title('Original')
img1 = img(1:8:i.Height, 1:8:i.Width);
subplot(1,2,2);
imshow(img1);
title('Quantized')