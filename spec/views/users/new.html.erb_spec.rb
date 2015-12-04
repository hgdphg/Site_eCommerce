require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :age => 1,
      :address => "MyString",
      :avatar_image => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_age[name=?]", "user[age]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "input#user_avatar_image[name=?]", "user[avatar_image]"
    end
  end
end
