% =============================Practical 9=================================
%% ------------------------------------------------------------------------
% 1.Create different structruing elements.
% -------------------------------------------------------------------------
diamond = strel('diamond',4);
square = strel('square',3);
disk = strel('disk',10);
rolling_ball = strel('ball',5,5);
line = strel('line',10,90);
%% ------------------------------------------------------------------------
% 2.Dilate a binary image using the above structuring elements
% -------------------------------------------------------------------------
I = imread('images/circles.png');
I_diamond = imdilate(I,diamond);
I_square = imdilate(I,square);
I_disk = imdilate(I,disk);
%I_rolling = imdilate(I,rolling_ball);
I_line = imdilate(I,line);

figure;
subplot(3,3,1);
imshow(I);
title('Original');
subplot(3,3,2);
imshow(I_diamond);
title('Dilated with Diamond Struct Element');
subplot(3,3,3);
imshow(I_square);
title('Dilated with Square Struct Element');
subplot(3,3,4);
imshow(I_disk);
title('Dilated with Disk Struct Element');
subplot(3,3,5);
imshow(I_rolling);
title('Dilated with Rolling Ball Struct Element');
subplot(3,3,6);
imshow(I_line);
title('Dilated with Verticle Line Struct Element');
%% ------------------------------------------------------------------------
% 2.Dilate a binary image using the above structuring elements
% -------------------------------------------------------------------------