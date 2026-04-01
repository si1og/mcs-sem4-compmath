% Adds values table and calculates finite difference table
addpath('./task3_t.m'); 

x_interp = 1.32;    

n = length(D(1, :));
P = D(1, 2);
q = (x_interp - first) / h;
term = 1;

for i = 3:n
    term = term * (q - (i - 2) + 1);
    P = P + D(1, i) * term / factorial(i - 2);
end
disp(P);