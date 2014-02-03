require "spec_helper"

describe ProprietariosController do
  describe "routing" do

    it "routes to #index" do
      get("/proprietarios").should route_to("proprietarios#index")
    end

    it "routes to #new" do
      get("/proprietarios/new").should route_to("proprietarios#new")
    end

    it "routes to #show" do
      get("/proprietarios/1").should route_to("proprietarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/proprietarios/1/edit").should route_to("proprietarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/proprietarios").should route_to("proprietarios#create")
    end

    it "routes to #update" do
      put("/proprietarios/1").should route_to("proprietarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/proprietarios/1").should route_to("proprietarios#destroy", :id => "1")
    end

  end
end
