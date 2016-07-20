class Vote < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
  belongs_to :user

  def cast(form_vote)
    vote = form_vote.to_i
    self.point += vote
    vote.save
  end
end
