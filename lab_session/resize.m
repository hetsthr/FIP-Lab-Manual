%% Resize
img = imread('cameraman.tif');
subplot(1,2,1);
imshow(img);
title('Original');
img1 = imresize(img,[100,100]);
subplot(1,2,2);
imshow(img1);
title('Resized');