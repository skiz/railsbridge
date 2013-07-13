class Post < ActiveRecord::Base
  belongs_to :user
  has_many :replies
  attr_accessible :title, :content
  validates :title, presence: true
  validates :content, presence: true
end
