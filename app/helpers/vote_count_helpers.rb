helpers do
  def vote_count(object)
    object.votes.sum(:point)
  end
end
