require "spec_helper"

describe TeenReAppFormsController do
  describe "routing" do

    it "routes to #index" do
      get("/teen_re_app_forms").should route_to("teen_re_app_forms#index")
    end

    it "routes to #new" do
      get("/teen_re_app_forms/new").should route_to("teen_re_app_forms#new")
    end

    it "routes to #show" do
      get("/teen_re_app_forms/1").should route_to("teen_re_app_forms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/teen_re_app_forms/1/edit").should route_to("teen_re_app_forms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/teen_re_app_forms").should route_to("teen_re_app_forms#create")
    end

    it "routes to #update" do
      put("/teen_re_app_forms/1").should route_to("teen_re_app_forms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/teen_re_app_forms/1").should route_to("teen_re_app_forms#destroy", :id => "1")
    end

  end
end
