f = @(x) abs(x .* sin(x) - 4 .* cos(x));

[x_max, neg_max] = fminbnd(@(x) -f(x), 0, pi);
M4 = -neg_max;

fprintf('x_max = %.4f\n', x_max);
fprintf('M4 = %.4f\n', M4);