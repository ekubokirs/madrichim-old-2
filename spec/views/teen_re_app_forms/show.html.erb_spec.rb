require 'spec_helper'

describe "teen_re_app_forms/show" do
  before(:each) do
    @teen_re_app_form = assign(:teen_re_app_form, stub_model(TeenReAppForm))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
