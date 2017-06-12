require 'rails_helper'

RSpec.describe "course_people/edit", type: :view do
  before(:each) do
    @course_person = assign(:course_person, CoursePerson.create!(
      :course => nil,
      :person => nil
    ))
  end

  it "renders the edit course_person form" do
    render

    assert_select "form[action=?][method=?]", course_person_path(@course_person), "post" do

      assert_select "input#course_person_course_id[name=?]", "course_person[course_id]"

      assert_select "input#course_person_person_id[name=?]", "course_person[person_id]"
    end
  end
end
