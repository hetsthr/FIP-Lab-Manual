%% Distance Transform
img = imread('circles.png');
subplot(2,2,1);
imshow(img);
title('Original')
img1 = im2bw(img);
subplot(2,2,2);
imshow(~img1);
title('Binary')
d = bwdist(~img1);
subplot(2,2,3);
imshow(d,[]);
title('Distance Tx');