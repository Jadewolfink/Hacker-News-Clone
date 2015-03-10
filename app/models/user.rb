class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :comment_votes
  has_many :post_votes

  validates :name, presence: true
  validates :password, presence:true

  def self.authenticate(name,password)
    user = User.find_by_name(name)
    if user && user.password == password
      p "succesfully login"
      user
    else
      nil
    end
  end

end
