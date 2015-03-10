class CommentVote < ActiveRecord::Base
  validates :user_id, presence:true
  validates :comment_id, presence:true
end
