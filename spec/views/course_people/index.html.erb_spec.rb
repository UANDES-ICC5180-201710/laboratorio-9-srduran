require 'rails_helper'

RSpec.describe "course_people/index", type: :view do
  before(:each) do
    assign(:course_people, [
      CoursePerson.create!(
        :course => nil,
        :person => nil
      ),
      CoursePerson.create!(
        :course => nil,
        :person => nil
      )
    ])
  end

  it "renders a list of course_people" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
