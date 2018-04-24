require 'rails_helper'

RSpec.describe "user_types/show", type: :view do
  before(:each) do
    @user_type = assign(:user_type, UserType.create!(
      :name => "Name",
      :description => "MyText",
      :authorizeDiscount => false,
      :commissionPercentage => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2.5/)
  end
end
