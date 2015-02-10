function [ P ] = PageRank( A, alpha )
%P = PAGERANK(A, ALPHA)
%   Computes the PageRank of every node of a directed adjacency matrix A,
%   and returns the solution as the column vector P, where each row
%   represents a node. The alpha parameter is used as a probability value
%   to account for two different surfing options: 1. following the
%   probability defined by the adjancency matrix, or 2. jumping to another
%   random node with uniform probability.

Dout = zeros(size(A));

for i=1:size(A,1)
    outDegree = 0;
    
    for j=1:size(A,1)
        outDegree = outDegree + A(i,j);
    end
    
    if (outDegree == 0)
        Dout(i,i) = 0;
    else
        Dout(i,i) = 1/outDegree;
    end
end

M = A*Dout;

Mprime = alpha*M + (1-alpha)*(1/size(M,1));
P = eigenVectorCentrality(Mprime);

end

