require 'rails_helper'

RSpec.describe "user_lessons/show", type: :view do
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
    @user_lesson = assign(:user_lesson, UserLesson.create!(
      :score => 22,
      :user => user,
      :lesson => lesson
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/22/)
    expect(rendered).to match(/UserName/)
    expect(rendered).to match(/LessonName/)
  end
end
