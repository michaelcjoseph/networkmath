function [ H, A ] = hubsAuthorities( M )
%HUBSAUTHORITIES(A)
%   Computes the hubs and authorities score of a directed adjacency matrix
%   M, and returns them in two column vectors, H and A, where each row
%   represents a node. It is important to note for this particular program 
%   that M(i,j) = 1 when node i is pointing to node j.

cocitation = transpose(M)*M; %bibliographic coupling matrix
bibliographic = M*transpose(M); %cocitation network

H = eigenVectorCentrality(bibliographic);
A = eigenVectorCentrality(cocitation);

end

