class Post < ApplicationRecord
  validates_presence_of :content
  belongs_to :user
  belongs_to :category, :optional => true

  has_many :likes, :dependent => :destroy
  has_many :liked_users, :through => :likes, :source => :user

  def find_like(user)
    self.likes.where(:user_id => user.id).first
  end

  has_many :collects, :dependent => :destroy
  has_many :collected_users, :through => :collects, :source => :user

  def find_collect(user)
    self.collects.where(:user_id => user.id).first
  end
end
