require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page name" do
      full_title("foo").should =~ /foo/
    end

    it "should not include the original base name" do
      full_title("foo").should_not =~ /^Ruby on Rails Starter App/
    end

    it "should include the new base name" do
      full_title("foo").should =~ /^Goals Tracker/
    end

    it "should not include a bar for the home page" do
      full_title("").should_not =~ /\|/
    end
  end
end