require "spec_helper"

describe CasasController do
  describe "routing" do

    it "routes to #index" do
      get("/casas").should route_to("casas#index")
    end

    it "routes to #new" do
      get("/casas/new").should route_to("casas#new")
    end

    it "routes to #show" do
      get("/casas/1").should route_to("casas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/casas/1/edit").should route_to("casas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/casas").should route_to("casas#create")
    end

    it "routes to #update" do
      put("/casas/1").should route_to("casas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/casas/1").should route_to("casas#destroy", :id => "1")
    end

  end
end
