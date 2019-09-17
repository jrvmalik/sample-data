function X = Figure8Knot( n, p )
% Uniformly sample n points from the figure-eight knot.
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 3;
    case 0
        error('Select a number of points to sample.')
end

% sample points from rectangle
c = sqrt(1024*1^8-2048*1^6+1300*1^4-204*1^2+25);
theta = nan(n, 1);
i = 1;
while i <= n
    x = c * rand(1); 
    t = 2*pi * rand(1);
    fx = sqrt(1024*cos(t)^8-2048*cos(t)^6+1300*cos(t)^4-204*cos(t)^2+25);
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
x = (2+cos(2*t)).*cos(3*t);
y = (2+cos(2*t)).*sin(3*t);
z = sin(4*t);

X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end



end

