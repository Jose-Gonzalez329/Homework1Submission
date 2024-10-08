function [acorr,lags] = autocorr(signal)
%{
 - Use crossCorr from problem 3 to attain the normalized autocorrelation.
 - You may assume that signal has shape (1,N) 
 - You may not use any predefined matlab functions or add any additional lines
 of code.
%}

% Call the crossCorr function using the signal with itself
[rawCorr, lags] = crossCorr(signal, signal);

% Normalize the autocorrelation by the zero-lag value
acorr = rawCorr / rawCorr(find(lags == 0, 1));

end