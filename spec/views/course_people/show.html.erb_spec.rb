require 'rails_helper'

RSpec.describe "course_people/show", type: :view do
  before(:each) do
    @course_person = assign(:course_person, CoursePerson.create!(
      :course => nil,
      :person => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
