function imgT = imgC(imgS, imgD, N)

iH_S = unique(imgS)';
H_S = sum(iH_S==imgS,2)/N;

jH_D = unique(imgD)';
H_D = sum(jH_D==imgD,2)/N;

imgT = zeros(9, 1);
imgT(1) = H_S'*iH_S/2;
imgT(2) = (H_S'*(iH_S-2*imgT(1)).^2+H_D'*(jH_D.^2))/2;