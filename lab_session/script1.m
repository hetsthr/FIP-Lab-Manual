clc;
clf;
i=imread('sunset.jpg');
j=rgb2gray(i);
% subplot(2,2,1);
% imshow(i);
% subplot(2,2,2);
% imshow(j);
% subplot(2,2,3);
% imhist(j);
% a=255-j
% subplot(2,2,4)
% imshow(a);
% b=imadjust(j,[],[],0.3);
% c=imadjust(j,[],[],0.8);
% d=imadjust(j,[],[],1.4);
% figure;
% subplot(2,2,1);
% imshow(j);
% title('ORIGINAL');
% subplot(2,2,2);
% imshow(b);
% title('GAMMA=0.3');
% subplot(2,2,3);
% imshow(c);
% title('GAMMA=0.8');
% subplot(2,2,4);
% imshow(d);
% title('GAMMA=1.4');
% e=imadd(j,d);
% f=imsubtract(j,d);
% figure;
% subplot(2,2,1);
% imshow(j);
% title('ORIGINAL');
% subplot(2,2,2);
% imshow(d);
% title('GAMMA=1.4');
% subplot(2,2,3);
% imshow(e);
% title('ADDITION');
% subplot(2,2,4);
% imshow(f);
% title('SUBTRACTION');
% figure;
q=histeq(j);
subplot(2,2,1);
imshow(j);
title('ORIGINAL');
subplot(2,2,2);
imhist(j);
title('HISTOGRAM ORIGINAL');
subplot(2,2,3);
imshow(q);
title('HISTEQ IMAGE');
subplot(2,2,4);
imhist(q);
title('HISTOGRAM EQUALIZED');
