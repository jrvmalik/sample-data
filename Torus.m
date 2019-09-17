function X = Torus( n, p )
% Uniformly sample n points from the 2-torus in R^3.
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 3;
    case 0
        error('Select a number of points to sample.')
end

theta = nan(n, 1);
i = 1;
while i <= n
    xvec = 2 * pi * rand(1);
    yvec = (1 / pi) * rand(1);
    fx = (1 + (3 / 5) * cos(xvec)) / (2 * pi);
    if yvec < fx
        theta(i) = xvec;
        i = i + 1;
    else
        continue
    end
end
phi = 2 * pi * sort(rand(n, 1));
x = (5 + 3 * cos(theta)) .* cos(phi);
y = (5 + 3 * cos(theta)) .* sin(phi);
z = 3 * sin(theta);

X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end

end

