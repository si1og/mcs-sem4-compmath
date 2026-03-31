% Adds values table
addpath('./task3_values.m'); 

function D = calcFinDiffTable(V)
    n = length(V(1, :));
    D = zeros(n, n+1);
    D(:, 1) = V(1, :)';
    D(:, 2) = V(2, :)';

    for j = 3:n+1
        for i = 1:n-j+2
            D(i, j) = (D(i+1, j-1) - D(i, j-1));
        end
    end
end

D = calcFinDiffTable(V);
disp(D);