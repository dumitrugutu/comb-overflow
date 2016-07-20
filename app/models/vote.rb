class Vote < ActiveRecord::Base
  def cast(form_vote)
    vote = form_vote.to_i
    self.point += vote
    vote.save
  end
end
