function [ cluster_labels ] = spectral_clustering( Laplacian, dim, num_clusters )
%[CLUSTER_LABELS] = SPECTRAL_CLUSTERING(LAPLACIAN)
%   Returns the spectral clustering of a graph given a Laplacian, 
%   dimensionality, and number of clusters for the graph in the form of a 
%   column vector, cluster_labels, where each row corresponds to a node and 
%   the value of the row represents which cluster the node belongs to

[V, D] = eig(Laplacian);

L_dimensional = zeros(size(Laplacian, 1), dim);    

for i=1:dim
    L_dimensional(:,i) = V(:,i);
end

cluster_labels = kmeans(L_dimensional, num_clusters, 'Start', 'cluster', 'EmptyAction', 'singleton');

end

