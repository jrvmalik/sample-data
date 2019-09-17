function X = Klein( n, p )
% Uniformly sample n points from the Klein bottle embedded in R^4.
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 4;
    case 0
        error('Select a number of points to sample.')
end

v = nan(n, 1);
i = 1;
while i <= n
    x = rand(1); 
    if x < 1
        v(i) = x;
        i = i + 1;
    else
        continue
    end
end
v = 2 * pi * sort(v);

R = 5;
r = 3;

u = nan(n, 1);
c = 1/2 * r * sqrt(4 * r^2 + 8 * r * R + 4 * R^2); % maximum of fx
i = 1;
while i <= n
    x = c * rand(1); 
    uvec = 2 * pi * rand(1);
    fx = (1/2)*sqrt(3*cos(uvec)^2*r^2+8*cos(uvec)*R*r+4*R^2+r^2)*r;
    if x < fx
        u(i) = uvec;
        i = i + 1;
    else
        continue
    end
end

x = (R + r * cos(u)) .* cos(v);
y = (R + r * cos(u)) .* sin(v);
z = r * sin(u) .* cos(v / 2);
w = r * sin(u) .* sin(v / 2);

X = [x, y, z, w];

if p > 4
    X = X * transpose(orth(randn(p, size(X, 2))));
end



end

