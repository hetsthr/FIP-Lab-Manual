function H = butterWorth_lowPass(f0,N)
%Function to create an butterworth low pass filter with specified cut-off
%frequency and order = 2.
X = N(1);
Y = N(2);
H = zeros(X,Y);
for u = 1:1:X
    for v = 1:1:Y
        D = sqrt((u-(X/2))^2 + (v-(X/2))^2);
        H(u,v) = 1/(1+((D/f0)^4));
    end
end