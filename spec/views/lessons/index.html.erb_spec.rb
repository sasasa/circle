require 'rails_helper'

RSpec.describe "lessons/index", type: :view do
  before(:each) do
    assign(:lessons, [
      Lesson.create!(
        :name => "Name"
      ),
      Lesson.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of lessons" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
