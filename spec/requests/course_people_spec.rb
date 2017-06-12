require 'rails_helper'

RSpec.describe "CoursePeople", type: :request do
  describe "GET /course_people" do
    it "works! (now write some real specs)" do
      get course_people_path
      expect(response).to have_http_status(200)
    end
  end
end
