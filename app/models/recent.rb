class Recent < Component
  #using STI therefore validations  are in component
  attr_accessible :title, :content
end
