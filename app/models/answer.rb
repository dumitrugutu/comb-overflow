class Answer < ActiveRecord::Base
  include ActionView::Helpers::DateHelper
  validates :content, presence: true

  belongs_to :question
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  def display_user
    puts "-----------------------------------------"
    puts "ANSWER"
    user = User.find(self.user_id).display_name
    user
  end

  def age
    distance_of_time_in_words( Time.now, self.created_at )
  end
end
