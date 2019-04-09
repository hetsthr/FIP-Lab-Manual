%==============================Practical 2=================================
%% ------------------------------------------------------------------------
% 1.Read and display an image
% -------------------------------------------------------------------------
I = imread('images/cameraman.tif');
figure;
imshow(I);
title('Read and display an image');
%% ------------------------------------------------------------------------
% 2.Write the image
% -------------------------------------------------------------------------
imwrite(I,'images/cameraman.png');
%% ------------------------------------------------------------------------
% 3.Display information of image
%--------------------------------------------------------------------------
imageinfo('images/cameraman.tif');
%% ------------------------------------------------------------------------
% 4.Display an image with and without a border
% -------------------------------------------------------------------------
figure;
imshow(I,'Border','loose');
title('With Border');
figure;
imshow(I,'Border','tight');
%% ------------------------------------------------------------------------
% 5.Flip the image
% -------------------------------------------------------------------------
flip_I = I(end:-1:1, 1:1:end);
figure;
imshow(flip_I);
title('Flip the image');
%% ------------------------------------------------------------------------
% 6.Resizing an image to 1.25 times the original image
% -------------------------------------------------------------------------
resize_I = imresize(I,1.25);
figure;
subplot(1,2,1)
imshow(I);
title('Original')
subplot(1,2,2)
imshow(resize_I);
title('1.25 Resized')
%% ------------------------------------------------------------------------
% 7.Rotating an image 35 degrees counterclockwise
% -------------------------------------------------------------------------
rotate_I = imrotate(I,35);
figure;
subplot(1,2,1)
imshow(I);
title('Original')
subplot(1,2,2)
imshow(rotate_I);
title('35 ccw rotated')