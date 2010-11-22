require File.dirname(__FILE__) + '/../spec_helper'

describe Cmspage do
  it "should be valid" do
    Cmspage.new.should be_valid
  end
end
