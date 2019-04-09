%% Rotate
img = imread('cameraman.tif');
i = imfinfo('cameraman.tif');
subplot(1,2,1);
imshow(img);
title('Original')
img1 = imrotate(img,180,'bilinear');
subplot(1,2,2);
imshow(img1);
title('Rotated')