require File.dirname(__FILE__) + '/../spec_helper'

describe Component do
  it "should be valid" do
    Component.new.should be_valid
  end
end
