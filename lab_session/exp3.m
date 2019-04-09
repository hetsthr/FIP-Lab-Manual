%% Experiment 3 (Crop)
img = imread('cameraman.tif');
subplot(1,2,1);
imshow(img);
title('Original');
img1 = img(100:250, 100:250);
subplot(1,2,2);
imshow(img1);
title('Cropped');