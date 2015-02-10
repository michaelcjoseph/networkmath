function elbowology( L )
%ELBOWOLOGY(L) 
%   Given a Laplacian of a graph, L, this function, prints out a plot of
%   the sums of the eigenvalues, to determine the appropriate number of
%   clusters

[V, D] = eig(L);

eigValues = abs(diag(D));
eigSums = zeros(size(eigValues));

eigSums(1) = eigValues(1);

for i=2:size(eigSums,1)
    eigSums(i) = eigValues(i) + eigSums(i-1);
end

plot(eigSums)

end

