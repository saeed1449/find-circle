clear  
clc
img=imread('baboon.jpg');
img=rgb2gray(img);
img=imresize(img,0.4);
img=imnoise(img,'gaussian',0,5);
mask=ones(3,3).*1/9;
[x,y]=size(img);
for i=2:x-1
    for j=2:y-1
        img1=double(img);
        m=img1(i-1:i+1,j-1:j+1).*mask;
        n(i,j)=sum(sum(m));
        n=uint8(n);
        
   
    end
end
imshow(n),title('local mean');
