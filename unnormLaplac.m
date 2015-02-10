function [ L ] = unnormLaplac( A )
%[L] = UNNORMLAPLAC
%   Returns the unnormalized Laplacian of a network given its adjacency
%   matrix A

D = zeros(size(A));                       %initializes diagonal degree matrix for A

for i=1:size(A, 1)
    
    degree = 0;
    
    for j=1:size(A, 1)
        degree = degree + A(i,j);
    end
    
    D(i, i) = degree; 
end

L = A - D;

end

