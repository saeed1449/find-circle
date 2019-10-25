clear
clc
a=imread('cameraman.tif');
b=edge(a,'sobel');
c=edge(a,'prewitt');
d=edge(a,'roberts');
e=edge(a,'canny');
subplot(2,3,1),imshow(a);
subplot(2,3,2),imshow(b),title('sobel');
subplot(2,3,3),imshow(c),title('prewitt');
subplot(2,3,4),imshow(d),title('roberts');
subplot(2,3,5),imshow(e),title('canny');