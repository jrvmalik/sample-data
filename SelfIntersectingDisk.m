function X = SelfIntersectingDisk( n, p )
% Uniformly sample n points from the self-intersecting disk.
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
c = r^2*sqrt(3+5); % maximum of fx
theta = nan(n, 2);
i = 1;
while i <= n
    x = c * rand(1); 
    u = 2 * pi * rand(1);
    v = rand(1);
    fx = r^2*v.*sqrt(3*cos(u).^2+5);
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
x = r.*v.*cos(2*u); 
y = r.*v.*sin(2*u);
z = r*v.*cos(u);

X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end



end

