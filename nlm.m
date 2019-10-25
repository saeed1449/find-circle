clc
clear
img=imread('baboon.jpg');
img=rgb2gray(img);
img=imresize(img,0.4);
noisy=imnoise(img,'gaussian',0,5);
noisy=double(noisy);
fimg=NLmeansfilter(noisy,5,2,10);
fimg=uint8(fimg);
imshow(fimg)
mse = sum(sum(fimg-noisy).^2) / (205 * 205)

 PSNR = 10*log10(256*256/mse)

