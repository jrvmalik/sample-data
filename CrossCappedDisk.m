function X = CrossCappedDisk( n, p )
% Uniformly sample n points from the cross-capped disk.
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 3;
    case 0
        error('Select a number of points to sample.')
end

% radius
r = 2;

% sample points from rectangle
c = 8; % maximum of fx (depends on r)
theta = nan(n, 2);
i = 1;
while i <= n
    x = c * rand(1); 
    u = 2 * pi * rand(1);
    v = 2 * pi * rand(1);
    fx = r^2*(1+cos(v))*sqrt(cosh(u-pi)^4-cos(v)^2*cosh(u-pi)^2+(cos(v)-1)^2)/cosh(u-pi)^2;
    if x < fx
        theta(i, :) = [u, v];
        i = i + 1;
    else
        continue
    end
end
theta = sortrows(theta);

% parameters
u = theta(:, 1);
v = theta(:, 2);

% parametrization
x = r*(1+cos(v)).*cos(u);
y = r*(1+cos(v)).*sin(u); 
z = -r*tanh(u-pi).*sin(v);

X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end



end

