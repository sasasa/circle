require 'rails_helper'

RSpec.describe "schools/index", type: :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        :name => "Name1"
      ),
      School.create!(
        :name => "Name2"
      )
    ])
  end

  it "renders a list of schools" do
    render
    assert_select "tr>td", :text => "Name1".to_s, :count => 1
    assert_select "tr>td", :text => "Name2".to_s, :count => 1
  end
end
