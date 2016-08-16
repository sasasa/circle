require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    school =
      School.create!(
        :name => "Name2"
      )
    @users = assign(:users, [
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
        :login_time => DateTime.now,
        :birthday => Date.today,
        :wake_up_time => DateTime.now,
        :country => "Country",
        :time_zone => "Time Zone",
        :school => school
      ),
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
        :login_time => DateTime.now,
        :birthday => Date.today,
        :wake_up_time => DateTime.now,
        :country => "Country",
        :time_zone => "Time Zone",
        :school => school
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Time Zone".to_s, :count => 2
    assert_select "tr>td", :text => "Name2", :count => 2
  end
end
