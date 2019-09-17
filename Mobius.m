function X = Mobius( n, p)
% Uniformly sample n points from the Mobius strip.
%   INPUT
%       n  : Number of points.


switch nargin
    case 1
        p = 3;
    case 0
        error('Select a number of points to sample.')
end

% sample points from rectangle
v = -1; u = 2*pi; 
c = (1/8)*sqrt(4*v^2*cos((1/2)*u)^2+16*v*cos((1/2)*u)+v^2+16);
theta = nan(n, 2);
i = 1;
while i <= n
    x = c * rand(1); 
    u = 2 * pi * rand(1);
    v = 2 * rand(1) - 1;
    fx = (1/8)*sqrt(4*v^2*cos((1/2)*u)^2+16*v*cos((1/2)*u)+v^2+16);
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
x = (1+(1/2)*v.*cos((1/2)*u)).*cos(u); 
y = (1+(1/2)*v.*cos((1/2)*u)).*sin(u); 
z = (1/2)*v.*sin((1/2)*u);

X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end

end

