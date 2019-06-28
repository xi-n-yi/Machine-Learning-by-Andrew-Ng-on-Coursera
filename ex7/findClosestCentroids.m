function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%
%  X size: m X 2 (i), centroids size：k X 2 (j)

% Set K
% ????????   K = size(centroids, 1);   

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1); % 不需要纪录centriods的坐标，只需标记序号，用于分类

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:size(X,1)
  allDistance = sum((X(i,:) - centroids).^2,2);
  idx(i) = find(allDistance == min(allDistance),1); 
  
  %令find函数只给出第一个最小值的index. 
  %       否则find函数将给出所有index的一个vector
  %       image compression时会出现错误信息：
  %       "nonconformant arguments (op1 is 1x1, op2 is 2x1)". 
  
endfor





% =============================================================

end

