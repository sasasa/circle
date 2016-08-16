require 'rails_helper'

RSpec.describe "user_groups/edit", type: :view do
  before(:each) do
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
    @user_group = assign(:user_group, UserGroup.create!(
      :user => user,
      :group => group
    ))
  end

  it "renders the edit user_group form" do
    render

    assert_select "form[action=?][method=?]", user_group_path(@user_group), "post" do

      assert_select "select#user_group_user_id[name=?]", "user_group[user_id]"

      assert_select "select#user_group_group_id[name=?]", "user_group[group_id]"
    end
  end
end
