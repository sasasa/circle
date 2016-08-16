require 'rails_helper'

RSpec.describe "UserLessons", type: :request do
  describe "GET /user_lessons" do
    it "works! (now write some real specs)" do
      get user_lessons_path
      expect(response).to have_http_status(200)
    end
  end
end
