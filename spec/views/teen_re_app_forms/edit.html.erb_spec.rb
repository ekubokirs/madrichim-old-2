require 'spec_helper'

describe "teen_re_app_forms/edit" do
  before(:each) do
    @teen_re_app_form = assign(:teen_re_app_form, stub_model(TeenReAppForm))
  end

  it "renders the edit teen_re_app_form form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teen_re_app_form_path(@teen_re_app_form), "post" do
    end
  end
end
