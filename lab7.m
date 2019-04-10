% =============================Practical 8=================================
%% ------------------------------------------------------------------------
% 1.Write a MATLAB program to compress an image and display the 
%   corresponding compression ratio.
% -------------------------------------------------------------------------
I = imread('images/rice.png');
[m,n]=size(I);
I_comp = I(1:2:m,1:2:n);
subplot(1,2,1);
imshow(I);
title('Original');
subplot(1,2,2);
imshow(I_comp);
title('Compressed Image');
