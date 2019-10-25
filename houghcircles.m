clear all
clc
img=imread('coins.png');%getting the image
img=imfill(img);% fill the hole of the image
imgBW=edge(img);% get edge of the image
imshow(imgBW)
[x,y]=size(img);
acc=zeros(x,y,400);
%% find the piksel that equal 1 
for i=1:4:x
    for j=1:4:y
        
            for a=1:2:x
                for b=1:2:y
                    if imgBW(a,b)==1
                    c3=(a-i)^2+(b-j)^2;
                    c3=c3^0.5;
                    c3=floor(c3)+1;
                    acc(i,j,c3)=acc(i,j,c3)+1; 
                end
                end
            end
    end
    
end
%% find the circle and drow that
for c1=1:x
    for c2=1:y
        for c3=1:100
        if acc(c1,c2,c3)/c3>3
            s=pi*c3^2
           ang=0:0.01:2*pi; 
           xp=c3*cos(ang)+c1;
           yp=c3*sin(ang)+c2;
           plot(xp,yp)
           hold
        end
        end
    end
end
