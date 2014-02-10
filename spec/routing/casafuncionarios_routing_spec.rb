require "spec_helper"

describe CasafuncionariosController do
  describe "routing" do

    it "routes to #index" do
      get("/casafuncionarios").should route_to("casafuncionarios#index")
    end

    it "routes to #new" do
      get("/casafuncionarios/new").should route_to("casafuncionarios#new")
    end

    it "routes to #show" do
      get("/casafuncionarios/1").should route_to("casafuncionarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/casafuncionarios/1/edit").should route_to("casafuncionarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/casafuncionarios").should route_to("casafuncionarios#create")
    end

    it "routes to #update" do
      put("/casafuncionarios/1").should route_to("casafuncionarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/casafuncionarios/1").should route_to("casafuncionarios#destroy", :id => "1")
    end

  end
end
