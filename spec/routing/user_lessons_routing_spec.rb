require "rails_helper"

RSpec.describe UserLessonsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_lessons").to route_to("user_lessons#index")
    end

    it "routes to #new" do
      expect(:get => "/user_lessons/new").to route_to("user_lessons#new")
    end

    it "routes to #show" do
      expect(:get => "/user_lessons/1").to route_to("user_lessons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_lessons/1/edit").to route_to("user_lessons#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_lessons").to route_to("user_lessons#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_lessons/1").to route_to("user_lessons#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_lessons/1").to route_to("user_lessons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_lessons/1").to route_to("user_lessons#destroy", :id => "1")
    end

  end
end
