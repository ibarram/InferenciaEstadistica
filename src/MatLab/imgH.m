function [iH, H] = imgH(img, N)

iH = unique(img)';
H = sum(iH==img,2)/N;