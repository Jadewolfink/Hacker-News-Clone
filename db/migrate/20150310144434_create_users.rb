class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |p|
      p.string :name
      p.string :password

      p.timestamps
    end
  end
end
