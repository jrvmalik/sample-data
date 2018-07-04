function X = Sphere( n, p )
% Uniformly sample n points from the 2-sphere.  Set in ambient space R^p.
%   INPUT
%       n  : Number of points.
%       p  : Dimension of ambient Euclidean space (>= 3).
%   OUTPUT
%       X  : Data matrix (n x p).
% Written by John Malik on 2018.7.4, john.malik@duke.edu

switch nargin
    case 1
        p = 3;
    case 0
        error('Select a number of points to sample.')
end

rvals = 2 * rand(n, 1) - 1;
elevation = asin(rvals);
azimuth = 2 * pi * rand(n, 1);
[x, y, z] = sph2cart(azimuth, elevation, 3);
X = sortrows([x, y, z]);

if p > 3
    X = X * transpose(orth(randn(p, 3)));
end


end

