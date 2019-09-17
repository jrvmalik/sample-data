function X = CliffordTorus( n, p )
% Uniformly sample n points from the Clifford Torus (S1 x S1).
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 4;
    case 0
        error('Select a number of points to sample.')
end

theta = nan(n, 2);
i = 1;
while i <= n
    x = rand(1, 2); 
    if x < 1
        theta(i, :) = x;
        i = i + 1;
    else
        continue
    end
end
theta = 2 * pi * sortrows(theta);
X = [cos(theta), sin(theta)];

if p > 4
    X = X * transpose(orth(randn(p, size(X, 2))));
end

end

