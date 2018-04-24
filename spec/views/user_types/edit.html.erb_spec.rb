require 'rails_helper'

RSpec.describe "user_types/edit", type: :view do
  before(:each) do
    @user_type = assign(:user_type, UserType.create!(
      :name => "MyString",
      :description => "MyText",
      :authorizeDiscount => false,
      :commissionPercentage => 1.5
    ))
  end

  it "renders the edit user_type form" do
    render

    assert_select "form[action=?][method=?]", user_type_path(@user_type), "post" do

      assert_select "input[name=?]", "user_type[name]"

      assert_select "textarea[name=?]", "user_type[description]"

      assert_select "input[name=?]", "user_type[authorizeDiscount]"

      assert_select "input[name=?]", "user_type[commissionPercentage]"
    end
  end
end
