class Cmspage < ActiveRecord::Base
  attr_accessible :title
  has_many :components, :dependent => :destroy
  validates_presence_of :title
end
