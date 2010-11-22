class Comment < ActiveRecord::Base
  attr_accessible :name, :body, :post
  belongs_to :post  
  validates_presence_of :name
  validates_presence_of :body
end
