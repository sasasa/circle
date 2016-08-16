require 'rails_helper'

RSpec.describe "lessons/show", type: :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
