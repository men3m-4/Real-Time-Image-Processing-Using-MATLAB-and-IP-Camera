clc;
%clear all
close all;
warning off;

% % الاتصال بكاميرا IP
mycam = ipcam('http://192.168.1.15:8080/video');

 % التقاط صورة من الكاميرا
while true 
e = mycam.snapshot;
 
 % عرض الصورة الأصلية
%imshow(e);
% تحويل الصورة إلى تدرج رمادي

ms = rgb2gray(e);
[BW,maskedImage] = segmentImage(ms);
% figure;
% imshow(BW);

% معالجة الكائنات: إزالة الضوضاء، توسيع، ملء الثقوب
filta = imfill(imdilate(bwareaopen(BW, 100), ones(5, 5)), 'holes');
% figure;
% imshow(filta);
[a b]=bwlabel(filta,8);
mesurements=regionprops(a,'BoundingBox');
imshow(e);
hold on;
for k=1:length(mesurements)
    thisBB=mesurements(k).BoundingBox;
    rectangle('Position',[thisBB(1),thisBB(2),thisBB(3),thisBB(4)] ,...
    'EdgeColor','r','LineWidth',2);
end
title(b);
hold off;
drawnow;
end