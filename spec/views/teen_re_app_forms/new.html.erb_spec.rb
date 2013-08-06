require 'spec_helper'

describe "teen_re_app_forms/new" do
  before(:each) do
    assign(:teen_re_app_form, stub_model(TeenReAppForm).as_new_record)
  end

  it "renders new teen_re_app_form form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teen_re_app_forms_path, "post" do
    end
  end
end
