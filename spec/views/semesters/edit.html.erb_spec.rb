require 'rails_helper'

RSpec.describe "semesters/edit", type: :view do
  before(:each) do
    @semester = assign(:semester, Semester.create!(
      name: "MyString"
    ))
  end

  it "renders the edit semester form" do
    render

    assert_select "form[action=?][method=?]", semester_path(@semester), "post" do

      assert_select "input[name=?]", "semester[name]"
    end
  end
end
