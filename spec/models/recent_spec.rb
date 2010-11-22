require File.dirname(__FILE__) + '/../spec_helper'

describe Recent do
  before(:each) do
    @attr = {:title => "componentTitle", :content => "The content"}
  end  
  
  it "should create a new instance given valid input" do
    Component.create(@attr)
  end
  
  it "should require a title" do
    no_title_component = Component.new(@attr.merge(:title => ""))
    no_title_component.should_not be_valid
  end
  
  it "should require content" do
    no_content_component = Component.new(@attr.merge(:content => ""))
    no_content_component.should_not be_valid
  end
end
