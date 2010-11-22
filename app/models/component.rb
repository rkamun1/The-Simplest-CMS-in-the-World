class Component < ActiveRecord::Base
  attr_accessible :title, :content, :cmspage_id, :position, :width, :height, :top, :left, :type
  belongs_to :cmspage
end
