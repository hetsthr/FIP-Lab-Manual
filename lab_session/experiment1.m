%% Experiment 1 -- Het

% Reading images
im1 = imread('cameraman.tif');
im2 = imread('mri.tif');
im3 = imread('mandi.tif');
im4 = imread('spine.tif');

% Showing images
imshow(im1);  %showing normal image
figure;imshow(im2, [20,100]);  %changing the min and max color value
figure;imshow(im3,'Border','loose'); 
iptsetpref('ImshowBorder','tight'); %set default border to tight
figure;imshow(im4); %border tight
% Write (save) image
imwrite(im2,'newfilename.png'); %Save file with new name and extension

% Display Multiple Images
figure;
subplot(2,2,1);
title('Camera Man');
imshow(im1);
subplot(2,2,2);
title('MRI');
imshow(im2);
subplot(2,2,3);
title('Mandi');
imshow(im3);
subplot(2,2,4);
title('Spine');
imshow(im4);
