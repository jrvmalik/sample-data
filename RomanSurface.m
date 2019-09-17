function X = RomanSurface( n, p )
% Uniformly sample n points from the Roman surface.
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
c = r^4; % maximum of fx
theta = nan(n, 2);
i = 1;
while i <= n
    x = c * rand(1); 
    u = pi / 2 * rand(1);
    v = 2 * pi * rand(1);
    fx = r^4*sqrt(1+(12*cos(v)^4-12*cos(v)^2)*cos(u)^6+(-8*cos(v)^4+8*cos(v)^2+4)*cos(u)^4-4*cos(u)^2)*abs(cos(u));
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
x = r^2*cos(u).*sin(u).*sin(v); 
y = r^2*cos(u).*sin(u).*cos(v); 
z = r^2*cos(u).^2.*cos(v).*sin(v);

X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end



end

