require 'rails_helper'

RSpec.describe "user_groups/show", type: :view do
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
    @user_group = assign(:user_group, UserGroup.create!(
      :user => user,
      :group => group
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/UserName/)
    expect(rendered).to match(/GroupName/)
  end
end
