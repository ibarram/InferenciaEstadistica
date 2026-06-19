function imgT = img_HSD(imgS, imgD, w)

pwl = (w(1)-1)/2;
pwk = (w(2)-1)/2;
[L, K] = size(imgS);
N = prod(w);

indl = (-pwl:pwl)';
indk = -pwk:pwk;
indw = indl+indk*L;

indl = ((1+pwl):(L-pwl))';
indk = (1+pwk):(K-pwk);
indi = indl+(indk-1)*L;

indT = indi(:)+indw(:)';
imgSi = imgS(indT);
imgDi = imgD(indT);
nP = size(indT,1);

imgTi = arrayfun(@(i1) imgC(imgSi(i1,:), imgDi(i1,:), N), 1:nP);
imgT = zeros(L-w(1)+1, K-w(2)+1, 9);
imgT1 = zeros(L-w(1)+1, K-w(2)+1);
for i1=1:9
    imgT1(:) = imgTi(i1, :);
    imgT(:,:,i1) = imgT1(:);
end