class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |p|
      p.string :title
      p.string :body
      p.belongs_to :user

      p.timestamps

    end

  end
end
