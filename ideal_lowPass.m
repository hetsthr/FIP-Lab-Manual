%=========================Ideal Low Pass Filter============================
function H = ideal_lowPass(f0,N)

%Function to create an ideal low pass filter with specified cut-off
%frequency.
X = N(1);
Y = N(2);
H = zeros(X,Y);
for u = 1:1:X
    for v = 1:1:Y
        D = (u-(X/2))^2 + (v-(X/2))^2;
        if D < f0^2
            H(u,v) = 1;
        else
            H(u,v) = 0;
        end
    end
end