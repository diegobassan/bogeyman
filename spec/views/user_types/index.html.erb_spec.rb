require 'rails_helper'

RSpec.describe "user_types/index", type: :view do
  before(:each) do
    assign(:user_types, [
      UserType.create!(
        :name => "Name",
        :description => "MyText",
        :authorizeDiscount => false,
        :comissionPercentage => 2.5
      ),
      UserType.create!(
        :name => "Name",
        :description => "MyText",
        :authorizeDiscount => false,
        :comissionPercentage => 2.5
      )
    ])
  end

  it "renders a list of user_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
