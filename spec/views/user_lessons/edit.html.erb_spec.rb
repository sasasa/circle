require 'rails_helper'

RSpec.describe "user_lessons/edit", type: :view do
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
    lesson =
      Lesson.create!(
        :name => "Name"
      )
    @user_lesson = assign(:user_lesson, UserLesson.create!(
      :score => 1,
      :user => user,
      :lesson => lesson
    ))
  end

  it "renders the edit user_lesson form" do
    render

    assert_select "form[action=?][method=?]", user_lesson_path(@user_lesson), "post" do

      assert_select "input#user_lesson_score[name=?]", "user_lesson[score]"

      assert_select "select#user_lesson_user_id[name=?]", "user_lesson[user_id]"

      assert_select "select#user_lesson_lesson_id[name=?]", "user_lesson[lesson_id]"
    end
  end
end
