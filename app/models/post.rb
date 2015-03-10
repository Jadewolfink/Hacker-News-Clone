class Post < ActiveRecord::Base
  has_many :post_votes
  has_many :comments
  belongs_to :user
  validates :title, presence: true
  validates :body, presence:true
end
