require 'rails_helper'

RSpec.describe "user_lessons/index", type: :view do
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
    lesson =
      Lesson.create!(
        :name => "LessonName"
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
    lesson_2 =
      Lesson.create!(
        :name => "LessonName"
      )
    assign(:user_lessons, [
      UserLesson.create!(
        :score => 2,
        :user => user,
        :lesson => lesson
      ),
      UserLesson.create!(
        :score => 2,
        :user => user_2,
        :lesson => lesson_2
      )
    ])
  end

  it "renders a list of user_lessons" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "UserName", :count => 2
    assert_select "tr>td", :text => "LessonName", :count => 2
  end
end
