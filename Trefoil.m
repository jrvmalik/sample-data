function X = Trefoil( n )
% Uniformly sample n points from the trefoil knot.
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 3;
    case 0
        error('Select a number of points to sample.')
end

% sample points from rectangle
c = sqrt(144*1^6-216*1^4+32*1^3+81*1^2-24*1+17);
theta = nan(n, 1);
i = 1;
while i <= n
    x = c * rand(1); 
    t = 2 * pi * rand(1);
    fx = sqrt(144*cos(t)^6-216*cos(t)^4+32*cos(t)^3+81*cos(t)^2-24*cos(t)+17);
    if x < fx
        theta(i) = t;
        i = i + 1;
    else
        continue
    end
end
theta = sort(theta);

% parameters
t = theta;

% parametrization
x = sin(t)+2*sin(2*t);
y = cos(t)-2*cos(2*t);
z = -sin(3*t);

X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end



end

