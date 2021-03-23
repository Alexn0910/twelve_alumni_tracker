require 'rails_helper'

RSpec.describe 'Add Member: ', type: :feature do
  before do
    # @request.env["devise.mapping"] = Devise.mappings[:admin]
    @admin = Admin.create(email: 'test@gmail.com')
    # sign_in FactoryBot.create(:admin)
    sign_in @admin
  end

  describe 'When a member is successfully added' do
    it 'flashes a success notice' do
      visit new_member_path

      fill_in 'member_firstName', with: 'TestFirstName'
      fill_in 'member_lastName', with: 'TestLastName'
      fill_in 'member_email', with: 'test@gmail.com'
      fill_in 'member_major', with: 'Testingg'
      fill_in 'member_currentCity', with: 'College Station'
      fill_in 'member_company', with: 'Dell'
      find(:css, '#member_position_ids_1').set(true)

      click_on('Submit')

      expect(page).to have_content('Member added successfully')
    end

    it 'is present in the data record' do
      visit new_member_path

      fill_in 'member_firstName', with: 'TestFirstName'
      fill_in 'member_lastName', with: 'TestLastName'
      fill_in 'member_email', with: 'test@gmail.com'
      fill_in 'member_major', with: 'Testingg'
      fill_in 'member_currentCity', with: 'College Station'
      fill_in 'member_company', with: 'Dell'
      find(:css, '#member_position_ids_1').set(true)

      click_on('Submit')

      expect(page).to have_content('TestFirstName')
      expect(page).to have_content('TestLastName')
      expect(page).to have_content('2016')
    end
  end
end
