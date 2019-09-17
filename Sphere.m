function X = Sphere( n, p )
% Uniformly sample n points from the sphere S2.
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 3;
    case 0
        error('Select a number of points to sample.')
end

S2 = zeros(n, 3);
for i = 1:n
    point = randn(1, 3);
    while norm(point) == 0
        point = randn(1, 3);
    end
    S2(i, :) = point / norm(point);
end
X = sortrows(S2);

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end

end

