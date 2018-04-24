require 'rails_helper'

RSpec.describe "user_types/new", type: :view do
  before(:each) do
    assign(:user_type, UserType.new(
      :name => "MyString",
      :description => "MyText",
      :authorizeDiscount => false,
      :commissionPercentage => 1.5
    ))
  end

  it "renders new user_type form" do
    render

    assert_select "form[action=?][method=?]", user_types_path, "post" do

      assert_select "input[name=?]", "user_type[name]"

      assert_select "textarea[name=?]", "user_type[description]"

      assert_select "input[name=?]", "user_type[authorizeDiscount]"

      assert_select "input[name=?]", "user_type[commissionPercentage]"
    end
  end
end
