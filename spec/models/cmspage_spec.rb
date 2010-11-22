require File.dirname(__FILE__) + '/../spec_helper'

describe Cmspage do
  before(:each) do
    @attr = {:title => "pageTitle"}
  end  
  
  it "should create a new instance given valid input" do
    Cmspage.create(@attr)
  end
  
  it "should require a title" do
    no_title_page = Cmspage.new(@attr.merge(:title => ""))
    no_title_page.should_not be_valid
  end
end
