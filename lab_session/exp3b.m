%% Experiment 3-b (Flip)
img = imread('cameraman.tif');
i = imfinfo('cameraman.tif');
subplot(2,2,1);
imshow(img);
title('Original')
img1 = img(end:-1:1, 1:1:end);
subplot(2,2,2);
imshow(img1);
title('Flipped')

img1 = img(end:-1:1, end:-1:1);
subplot(2,2,3);
imshow(img1);
title('Flipped')

img1 = img(1:1:end, end:-1:1);
subplot(2,2,4);
imshow(img1);
title('Flipped')