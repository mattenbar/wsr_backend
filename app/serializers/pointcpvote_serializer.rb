class PointcpvoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :articleOneVote, :articleTwoVote
end
