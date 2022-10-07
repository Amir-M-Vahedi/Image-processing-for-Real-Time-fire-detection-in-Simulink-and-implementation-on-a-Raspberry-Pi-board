clc;clear;close all;
n=1;
switch n
    case 1
        Im=imread('Screenshot (736).png');
    case 2
        Im=imread('fotolia-gilitukha-forest-fire.jpg');
    case 3
        Im=imread('growing-risk-future-wildfires_adobestock_199370851.jpeg');
end
[m,n,~]=size(Im);
mask=zeros(m,n);
Im_HSV = rgb2hsv(Im);
C0=0.25;
R_T=120;%[115 135]
S_T=60;%[55 65]
for i=1:m
    for j=1:n
        if Im(i,j,1)>=R_T
            if Im(i,j,1)>=Im(i,j,2) && Im(i,j,2)>=Im(i,j,3)
                if Im_HSV(i,j,2)>=(255-Im(i,j,1))*S_T/R_T
                    mask(i,j)=1;
                end
            end
        end
    end
end
Im1= bsxfun(@times, Im, cast(mask, 'like', Im));
subplot(3,1,1)
imshow(Im)
subplot(3,1,2)
imshow(Im1)
subplot(3,1,3)
% st1=strel('disk',10);%*
% bw1=imclose(mask,st1);%*
% mask=imfill(bw1,'holes');%*
imshow(mask)

% stats=regionprops(mask,'all')
stats=regionprops(mask,'Area','BoundingBox','Perimeter')
