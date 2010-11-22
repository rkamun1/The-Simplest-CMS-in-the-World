class Poll < Component
  #using STI therefore validations  are in component
  attr_accessible :title, :content, :yes, :no, :total_votes, :ipaddress
end
