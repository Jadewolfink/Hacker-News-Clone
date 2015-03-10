class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |p|
      p.belongs_to :user
      p.belongs_to :comment

      p.timestamps
    end
  end
end
