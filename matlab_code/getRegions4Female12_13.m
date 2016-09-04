function [regions, img, wb]=getRegions4Female12_13(ones_len, ones_len2, thresh, name)
img=imread(name);
img = img(330:750,10:1024,:);% different from 10_11 
% regions = 1;
% wb = 1;
img = double(img);
img=localmean(img, ones(ones_len));
mean=localmean(img, ones(ones_len2));
g = uint8(img - 0.5*mean);
wb = im2bw(g, thresh*graythresh(g));
regions = regionprops(wb);
img = uint8(img);
end