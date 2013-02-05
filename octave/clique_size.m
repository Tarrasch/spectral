function [ ans ] = clique_size( g )

m_length = length(g)

if length(g) == 0
  ans = 0;
else
  [maxVal maxInd] = max(sum(g));
  indices = g(maxInd,:);
  g = g(indices, indices);
  ans = clique_size(g) + 1;
end

end

