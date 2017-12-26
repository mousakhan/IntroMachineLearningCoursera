function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


sum = zeros(K, n);
constants = zeros(K, 1);


% for i = 1:size(centroids, 1)
%     for j = 1:size(centroids,2)
%         centroids(i, j)
%     end
% end

 for i = 1:m
     for j = 1:K
         if idx(i) == j
             sum(j,:) = sum(j,:) + X(i,:);
             constants(j) = constants(j) + 1;
         end
     end
 end
% 
% sum

 for j = 1:K 
      centroids(j,:) = (1/constants(j)) * sum(j,:);
 end
% 






% =============================================================


end

