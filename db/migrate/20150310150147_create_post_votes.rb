class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |p|
      p.belongs_to :user
      p.belongs_to :post

      p.timestamps
    end
  end
end
