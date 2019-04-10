function H = gaussian_lowPass(f0,N)
%Function to create an gaussian low pass filter with specified cut-off
%frequency.
X = N(1);
Y = N(2);
H = zeros(X,Y);
for u = 1:1:X
    for v = 1:1:Y
        D = (u-(X/2))^2 + (v-(X/2))^2;
        H(u,v) = exp(-D/(2*f0*f0));
    end
end