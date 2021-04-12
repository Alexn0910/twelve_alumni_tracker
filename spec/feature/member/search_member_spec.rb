require 'rails_helper'

RSpec.describe 'Add Member: ', type: :feature do
  before do
    @admin = Admin.create(email: 'twelvetamu@gmail.com')
    sign_in @admin
  end

  it 'is present in the data record' do
    # Create first person
    visit new_member_path

    fill_in 'member_first_name', with: 'Nick'
    fill_in 'member_last_name', with: 'Wanner'
    fill_in 'member_email', with: 'test@gmail.com'
    fill_in 'member_major', with: 'Testingg'
    fill_in 'member_current_city', with: 'College Station'
    fill_in 'member_company', with: 'Dell'
    find(:css, '#member_alumniYet').set(true)
    find(:css, '#member_position_ids_1').set(true)
    find(:css, '#member_semester_ids_1').set(true)

    click_on('Submit')

    expect(page).to have_content('Nick')

    fill_in 'search-box', with: 'test'
    click_button('search-btn')

    expect(page).to have_content('Nick')
  end
end
