function [corr, lags] = crossCorr(X,H)

%{

    Return:
        corr = cross correlation of X and H 

    Requirements:
        - You must call the convolution function you wrote to attain corr.
        - The only predefined Matlab functions you may use are fliplr and norm. 
        - You may not add any additional lines of code.

%}


H = fliplr(H);
if length(X) < length(H)
    X = [X zeros(1,length(H)-length(X))];
else if length(X) > length(H)
    H = [H zeros(1,length(X)-length(H))];
end

corr = conv(X,H); %Change Me
%corr = Add code here & uncomment;
lags = -(length(H)-1):(length(X)-1);%Change Me
end
