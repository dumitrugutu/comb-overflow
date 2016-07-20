class Answer < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :question
  belongs_to :answerer, class_name: "User"
  has_many :comments, as: :commentable
end
