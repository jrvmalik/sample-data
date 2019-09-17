function X = EightSurface( n, p )
% Uniformly sample n points from the eight surface.
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 3;
    case 0
        error('Select a number of points to sample.')
end

% sample points from rectangle
c = 1.2052; % maximum of fx
theta = nan(n, 2);
i = 1;
while i <= n
    x = c * rand(1); 
    u = 2 * pi * rand(1);
    v = pi / 2 * (2 * rand(1) - 1);
    fx = 2*sqrt(16*cos(v)^4-15*cos(v)^2+4)*abs(sin(v)*cos(v));
    if x < fx
        theta(i, :) = [u, v];
        i = i + 1;
    else
        continue
    end
end
theta = sortrows(theta(:, [2, 1]));

% parameters
u = theta(:, 2);
v = theta(:, 1);

% parametrization
x = cos(u).*sin(2*v);
y = sin(u).*sin(2*v);
z = sin(v);

X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end



end

