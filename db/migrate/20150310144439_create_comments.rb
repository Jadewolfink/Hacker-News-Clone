class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |p|
      p.string :text
      p.belongs_to :user
      p.belongs_to :post

      p.timestamps
    end
  end
end
