function X = ProjectivePlane( n, p )
% Uniformly sample n points from RP^2.
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 4;
    case 0
        error('Select a number of points to sample.')
end

% radius
r = 2;

% sample points from rectangle
c = 2 * r^4; % maximum of fx
theta = nan(n, 2);
i = 1;
while i <= n
    x = c * rand(1); 
    u = pi * rand(1);
    v = 2 * pi * rand(1);
    fx = r^4*sqrt(1+(36*cos(u)^6-84*cos(u)^4+60*cos(u)^2-12)*cos(v)^4+(-36*cos(u)^6+84*cos(u)^4-60*cos(u)^2+12)*cos(v)^2)*abs(sin(u));
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
x = r^2*sin(u).^2.*cos(v).^2-r^2*sin(u).^2.*sin(v).^2;
y = r^2*sin(u).^2.*cos(v).*sin(v);
z = r^2*sin(u).*cos(v).*cos(u);
w = r^2*sin(u).*sin(v).*cos(u);


X = [x, y, z, w];

if p > 4
    X = X * transpose(orth(randn(p, size(X, 2))));
end


end

