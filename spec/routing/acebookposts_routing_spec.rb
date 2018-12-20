require "rails_helper"

RSpec.describe AcebookpostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/acebookposts").to route_to("acebookposts#index")
    end

    it "routes to #new" do
      expect(:get => "/acebookposts/new").to route_to("acebookposts#new")
    end

    it "routes to #show" do
      expect(:get => "/acebookposts/1").to route_to("acebookposts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/acebookposts/1/edit").to route_to("acebookposts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/acebookposts").to route_to("acebookposts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/acebookposts/1").to route_to("acebookposts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/acebookposts/1").to route_to("acebookposts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/acebookposts/1").to route_to("acebookposts#destroy", :id => "1")
    end

  end
end
