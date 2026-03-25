x = [1.41, 2.31, 4.13, 5.31, 6.01];
y = [-1.4156, 2.3901, 3.0567, 0.9812, 2.7569];

x_interp = 4.96;
L = 0;

n = length(x);
for i = 1:n
    L_i = 1;
    for j = 1:n;
        if i ~= j
            L_i = L_i * (x_interp - x(j)) / (x(i) - x(j))
        end
    end
    L = L + y(i) * L_i
end


fprintf('%f\n', L)