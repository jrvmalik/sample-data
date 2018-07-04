function X = SwissRoll( n, p )
% Uniformly sample n points from the Swiss roll.  Set in ambient space R^p.
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

theta = nan(n, 1);
i = 1;
while i <= n
    xvec = rand(1);
    yvec = rand(1);
    fx = (9*(2*pi*xvec+pi)^2+4)^(1/2)/(4+81*pi^2)^(1/2);
    if yvec < fx
        theta(i) = xvec;
        i = i + 1;
    else
        continue
    end
end
t = sort(theta);
s = 21 * rand(n, 1);
x = 3 * pi * (1 + 2 * t) / 8.*cos(3 * pi * (1 + 2 * t) / 2);
y = s;
z = 3 * pi * (1 + 2 * t) / 8.*sin(3 * pi * (1 + 2 * t) / 2);
X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, 3)));
end


end

