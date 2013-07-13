class Reply < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  attr_accessible :content
end
