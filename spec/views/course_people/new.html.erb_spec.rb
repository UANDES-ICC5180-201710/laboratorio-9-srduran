require 'rails_helper'

RSpec.describe "course_people/new", type: :view do
  before(:each) do
    assign(:course_person, CoursePerson.new(
      :course => nil,
      :person => nil
    ))
  end

  it "renders new course_person form" do
    render

    assert_select "form[action=?][method=?]", course_people_path, "post" do

      assert_select "input#course_person_course_id[name=?]", "course_person[course_id]"

      assert_select "input#course_person_person_id[name=?]", "course_person[person_id]"
    end
  end
end
