function [imgG_S, imgG_D] = img_SD(imgG, dp)

[n, m] = size(imgG);
imgG_d = double(imgG);

if(dp(1)>0)
    idv1 = 1:(n-dp(1));
    idv2 = (1+dp(1)):n;
else
    idv1 = (1-dp(1)):n;
    idv2 = 1:(n+dp(1));
end

if(dp(2)>0)
    idu1 = 1:(m-dp(2));
    idu2 = (1+dp(2)):m;
else
    idu1 = (1-dp(2)):m;
    idu2 = 1:(m+dp(2));
end

imgG_S = imgG_d(idv1,idu1)+imgG_d(idv2,idu2);
imgG_D = imgG_d(idv1,idu1)-imgG_d(idv2,idu2);