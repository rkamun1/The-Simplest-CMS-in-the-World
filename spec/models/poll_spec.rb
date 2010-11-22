require File.dirname(__FILE__) + '/../spec_helper'

describe Poll do
  it "should be valid" do
    Poll.new.should be_valid
  end
end
