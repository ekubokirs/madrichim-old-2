require 'spec_helper'

describe "teen_re_app_forms/index" do
  before(:each) do
    assign(:teen_re_app_forms, [
      stub_model(TeenReAppForm),
      stub_model(TeenReAppForm)
    ])
  end

  it "renders a list of teen_re_app_forms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
