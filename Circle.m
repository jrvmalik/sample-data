function X = Circle( n, p )
% Uniformly sample n points from the circle S^1.  Set in ambient space R^p.
%   INPUT
%       n  : Number of points.
%       p  : Dimension of ambient Euclidean space (>= 2).
%   OUTPUT
%       X  : Data matrix (n x p).
% Written by John Malik on 2018.7.4, john.malik@duke.edu

switch nargin
    case 1
        p = 2;
    case 0
        error('Select a number of points to sample.')
end

theta = nan(n, 1);
i = 1;
while i <= n
    xvec = rand(1);
    if xvec < 1
        theta(i) = xvec;
        i = i + 1;
    else
        continue
    end
end
t = sort(theta);
x = cos(2 * pi * t);
y = sin(2 * pi * t);
X = [x, y];

if p > 2
    X = X * transpose(orth(randn(p, 2)));
end


end

