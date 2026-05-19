f = @(x) x .* sin(x);

a = 0;
b = pi;

h = (b - a) / 3;
x = [a, a + h, a + 2 * h, b];
y = f(x);

I_nc = 3 * h / 8 * (y(1) + 3 * y(2) + 3 * y(3) + y(4));
I_exact = pi;
error_nc = abs(I_exact - I_nc);

fprintf('I_nc = %.6f\n', I_nc);
fprintf('error_nc = %.6f\n', error_nc);