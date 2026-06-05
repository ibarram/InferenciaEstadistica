clc;
close all;
clear;

if ispc
    d = '\';
else
    d = '/';
end

path_bd = pwd;
id_d = find(path_bd==d);
path_bd = [path_bd(1:id_d(end-1)), 'data', d, 'textures', d];

ext_img = '.tiff';

dp = [0 -1 -1; 1 1 0];
ndp = size(dp, 2);

fl_img = dir([path_bd, '*', ext_img]);

imgG = imread([path_bd, fl_img(1).name]);

[n, m] = size(imgG);
imgS = cell(1, ndp);
imgD = cell(1, ndp);
for i1=1:ndp
    [imgS{i1}, imgD{i1}] = img_SD(imgG, dp(:,i1));
end

figure(1);
imshow(imgG);

figure(2);
imshow(imgS{1}, [min(imgS{1}(:)) max(imgS{1}(:))]);

figure(3);
imshow(imgD{1}, [min(imgD{1}(:)) max(imgD{1}(:))]);

