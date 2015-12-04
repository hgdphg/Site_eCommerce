require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :age => 1,
        :address => "Address",
        :avatar_image => "Avatar Image"
      ),
      User.create!(
        :name => "Name",
        :age => 1,
        :address => "Address",
        :avatar_image => "Avatar Image"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar Image".to_s, :count => 2
  end
end
