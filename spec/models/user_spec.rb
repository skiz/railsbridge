require 'spec_helper'

describe User do
  it "should require email" do
    u = User.new
    u.should_not be_valid
    u.errors.on(:email).should be
  end
end
