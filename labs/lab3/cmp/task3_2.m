% Adds values table and calculates finite difference table
addpath('./task3_t.m'); 

x_interp = 3.84;    

n = length(D(1, :));
m = length(D(:, 1));
P = D(m, 2);
q = (x_interp - last) / h;
term = 1;

for i = 3:n
    i_shifted = i - 2;
    term = term * (q + i_shifted - 1);
    P = P + D(m - i_shifted, i) * term / factorial(i_shifted);
end
disp(P);