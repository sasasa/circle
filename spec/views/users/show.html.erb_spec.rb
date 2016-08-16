require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    school =
      School.create!(
        :name => "Name2"
      )
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Time Zone/)
    expect(rendered).to match(/Name2/)
  end
end
