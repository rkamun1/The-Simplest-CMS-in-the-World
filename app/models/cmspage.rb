class Cmspage < ActiveRecord::Base
  attr_accessible :title
  has_many :components
  validates_presence_of :title
end
