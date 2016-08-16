require 'rails_helper'

RSpec.describe "user_groups/index", type: :view do
  before(:each) do
    user =
      User.create!(
        :admin => false,
        :name => "UserName",
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
        :name => "GroupName"
      )
    user_2 =
      User.create!(
        :admin => false,
        :name => "UserName",
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
    group_2 =
      Group.create!(
        :name => "GroupName"
      )
    assign(:user_groups, [
      UserGroup.create!(
        :user => user,
        :group => group
      ),
      UserGroup.create!(
        :user => user_2,
        :group => group_2
      )
    ])
  end

  it "renders a list of user_groups" do
    render
    assert_select "tr>td", :text => "UserName", :count => 2
    assert_select "tr>td", :text => "GroupName", :count => 2
  end
end
