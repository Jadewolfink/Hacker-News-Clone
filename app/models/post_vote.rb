class PostVote < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :user_id,presence: true
  validates :post_id, presence:true
  # Remember to create a migration!
end
