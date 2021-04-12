require 'rails_helper'

RSpec.describe 'Add Semester: ', type: :feature do
  before do
    @admin = Admin.create(email: 'twelvetamu@gmail.com')
    sign_in @admin
  end

  it 'is present in the data record' do
    visit new_semester_path

    fill_in 'semester_name', with: 'Test_name'

    click_on('Submit')

    expect(page).to have_content('Test_name')
  end
end
