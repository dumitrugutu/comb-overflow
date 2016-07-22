class Comment < ActiveRecord::Base
include ActionView::Helpers::DateHelper
  validates :content, presence: true

  belongs_to :user
  belongs_to :commentable, polymorphic: true

  # refactor so that you can only comment when logged in, need sessions and authorization
  def display_user
    # if self.user_id == nil
    #   return "anonymous"
    # else
    puts "-----------------------------------------"
    puts "COMENTS"
    p user = self.user_id
    puts "-----------------------------------------"

      User.find(self.user_id).display_name
    # end
  end

  def age
    distance_of_time_in_words( Time.now, self.created_at )
  end
end
