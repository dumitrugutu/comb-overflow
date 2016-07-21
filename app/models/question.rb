class Question < ActiveRecord::Base
  include ActionView::Helpers::DateHelper
  validates :content, presence: true

  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  def display_name
    User.find(self.user.id).display_name
  end

  def age
    distance_of_time_in_words( Time.now, self.created_at )
  end
end
