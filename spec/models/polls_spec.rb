require File.dirname(__FILE__) + '/../spec_helper'

describe Polls do
  it "should be valid" do
    Polls.new.should be_valid
  end
end
