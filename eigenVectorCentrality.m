function EVC = eigenVectorCentrality( A )
%EIGENVECTORCENTRALITY(A)
%   Computes the Eigenvector Centrality of given adjacency matrix A
%   Returns the column vector EV, which lists the eigenvector centralities
%   of each node

[V, D] = eig(A);

eigValues = zeros(size(D, 1), 1);

for i=1:size(D,1)
    sum = 0;
    
    for j=1:size(D,2)
        sum = sum + D(j,i);
    end
        
    eigValues(i) = abs(sum);
end

principal = eigValues(1);
tracker = 1;

for i=2:size(eigValues,1)
    if principal < eigValues(i)
        principal = eigValues(i);
        tracker = i;
    end
end

EVC = abs(V(:,tracker));

end

