require 'spec_helper'

describe "Actions for Questions", :type => :request do
  describe "Ask a questions" do
    before :each do
      create_group
      @user = User.make(:user)
      @group.add_member(@user, "owner")
    end
    it "with data valid" do
      visit "/"
      page.should have_css(".top-bar")
      sleep(10)
    end
  end
end
