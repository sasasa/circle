require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    school =
      School.create!(
        :name => "Name2"
      )
    @user = assign(:user, User.create!(
      :admin => false,
      :name => "MyString",
      :email => "MyString",
      :url => "MyString",
      :phone => "MyString",
      :password => "MyString",
      :comment => "MyText",
      :age => 1,
      :study_hour => 1,
      :volume => 1.5,
      :login_time => DateTime.now,
      :birthday => Date.today,
      :wake_up_time => DateTime.now,
      :country => "MyString",
      :time_zone => "MyString",
      :school => school
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_admin[name=?]", "user[admin]"

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_url[name=?]", "user[url]"

      assert_select "input#user_phone[name=?]", "user[phone]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "textarea#user_comment[name=?]", "user[comment]"

      assert_select "input#user_age[name=?]", "user[age]"

      assert_select "input#user_study_hour[name=?]", "user[study_hour]"

      assert_select "input#user_volume[name=?]", "user[volume]"

      assert_select "select#user_login_time_1i[name=?]", "user[login_time(1i)]"
      assert_select "select#user_login_time_2i[name=?]", "user[login_time(2i)]"
      assert_select "select#user_login_time_3i[name=?]", "user[login_time(3i)]"
      assert_select "select#user_login_time_4i[name=?]", "user[login_time(4i)]"
      assert_select "select#user_login_time_5i[name=?]", "user[login_time(5i)]"

      assert_select "select#user_birthday_1i[name=?]", "user[birthday(1i)]"
      assert_select "select#user_birthday_2i[name=?]", "user[birthday(2i)]"
      assert_select "select#user_birthday_3i[name=?]", "user[birthday(3i)]"

      assert_select "select#user_wake_up_time_4i[name=?]", "user[wake_up_time(4i)]"
      assert_select "select#user_wake_up_time_5i[name=?]", "user[wake_up_time(5i)]"

      assert_select "select#user_country[name=?]", "user[country]"

      assert_select "input#user_time_zone[name=?]", "user[time_zone]"

      assert_select "input#user_school_id[name=?]", "user[school_id]"
    end
  end
end
