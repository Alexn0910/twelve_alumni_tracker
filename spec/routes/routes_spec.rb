require "rails_helper"

RSpec.describe "Routes for Members", :type => :routing do
    
    before(:each) do
        @admin = Admin.create(email:"test@gmail.com")
        sign_in @admin
    end

    it "route 1" do
    {:get => members_path}.should route_to(
        :controller => 'members',
        :action => 'index'
    )
    end

    it "route 2" do
        {:get => new_member_path}.should route_to(
            :controller => 'members',
            :action => 'new'
        )
    end
end