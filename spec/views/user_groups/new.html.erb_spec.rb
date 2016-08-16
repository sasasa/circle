require 'rails_helper'

RSpec.describe "user_groups/new", type: :view do
    user =
      User.create!(
        :admin => false,
        :name => "Name",
        :email => "Email",
        :url => "Url",
        :phone => "Phone",
        :password => "Password",
        :comment => "MyText",
        :age => 2,
        :study_hour => 3,
        :volume => 4.5,
        :country => "Country",
        :time_zone => "Time Zone",
        :school => nil
      )
    group =
      Group.create!(
        :name => "Name"
      )
  before(:each) do
    assign(:user_group, UserGroup.new(
      :user => user,
      :group => group
    ))
  end

  it "renders new user_group form" do
    render

    assert_select "form[action=?][method=?]", user_groups_path, "post" do

      assert_select "select#user_group_user_id[name=?]", "user_group[user_id]"

      assert_select "select#user_group_group_id[name=?]", "user_group[group_id]"
    end
  end
end
