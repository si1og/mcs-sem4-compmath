pkg load symbolic

xd = [1.41, 2.31, 4.13, 5.31, 6.01];
yd = [-1.4156, 2.3901, 3.0567, 0.9812, 2.7569];

x_interp = 4.96;
L = 0;

syms x

n = length(xd);
for i = 1:n
    L_i = 1;
    for j = 1:n;
        if i ~= j
            L_i = L_i * (x - xd(j)) / (xd(i) - xd(j))
        end
    end
    L = L + yd(i) * L_i
    latex(L)
end

latex_formula = latex(L)
disp(latex_formula)
