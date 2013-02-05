function [ M ] = rand_graph( n )

A = rand(n);
M = triu(A,1) + triu(A, 1)';
M = M > 0.5;

end
