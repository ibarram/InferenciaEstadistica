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

w = [7 5 7; 5 7 7];
nw = size(w, 2);

fl_img = dir([path_bd, '*', ext_img]);

imgG = imread([path_bd, fl_img(1).name]);

[n, m] = size(imgG);
imgS1 = cell(1, ndp);
imgD1 = cell(1, ndp);
for i1=1:ndp
    [imgS1{i1}, imgD1{i1}] = img_SD(imgG, dp(:,i1));
end

[imgS2, imgD2] = cellfun(@(i1) img_SD(imgG, dp(:,i1)), num2cell(1:ndp), 'UniformOutput', false);

imgT = img_HSD(imgS2{1}, imgD2{1}, w(:, 3));

figure(1);
imshow(imgG);

imgM = imgT(:,:,1);
figure(2);
imshow(imgM, [min(imgM(:)) max(imgM(:))]);

imgV = imgT(:,:,2);
figure(3);
imshow(imgV, [min(imgV(:)) max(imgV(:))]);

