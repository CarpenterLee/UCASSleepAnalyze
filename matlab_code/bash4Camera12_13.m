clear;
img=imread('E:\sleepAnalyze\autoCamera20151012_13\test\20151012_230124/in.jpg');
r_len = 2;
c_len = 2;
% size(img)
% imshow(img);
% return;
img = img(1:295,215:880,:);
subplot(r_len, c_len, 1);imshow(rgb2gray(img));xlabel('gray');
img=double(img);
ones_len = 9;%mean1
ones_len2 = 23;%mean2
thresh = 0.25;%thresh
mean=localmean(img, ones(ones_len));
img = mean;
subplot(r_len, c_len, 2);imshow(uint8(img));xlabel('mean');
mean=localmean(img, ones(ones_len2));
g = img - 0.5*mean;
g = uint8(g);
subplot(r_len, c_len, 3);imshow(g);xlabel('mean1-0.5*mean2');
wb = im2bw(g, thresh*graythresh(g));
subplot(r_len, c_len, 4);
imshow(wb);xlabel('wb');
regions = regionprops(wb)
% imshow(wb);
% print(gcf, '-dpng', 'png.png')
% saveas(gcf, 'png.png')
% imwrite(wb, name_save, 'png');
