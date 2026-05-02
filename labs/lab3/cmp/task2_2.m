x = [1.41, 2.31, 4.13, 5.31, 6.01];
y = [-1.4156, 2.3901, 3.0567, 0.9812, 2.7569];

function D = calcDivDiffTable(x, y)
    n = length(x);
    D = zeros(n, n+1);
    D(:, 1) = x';
    D(:, 2) = y';

    for j = 3:n+1
        for i = 1:n-j+2
            D(i, j) = (D(i+1, j-1) - D(i, j-1)) / (D(i+j-2, 1) - D(i, 1));
        end
    end
end

D = calcDivDiffTable(x, y);
n = length(x);
x_interp = 2.11;

P = D(1, 2);
term = 1;

for i = 1:n-1
    term = term * (x_interp - x(i));
    P = P + D(1, i+2) * term;
end

fprintf('%f\n', P)
