require 'rails_helper'

RSpec.describe 'Add Member: ', type: :feature do
    before(:each) do
        @admin = Admin.create(email:"test@gmail.com")
        sign_in @admin
    end

    it 'is present in the data record' do
      visit new_member_path

      fill_in 'member_first_name', with: 'Testfirst_name'
      fill_in 'member_last_name', with: 'Testlast_name'
      fill_in 'member_email', with: 'test@gmail.com'
      fill_in 'member_major', with: 'Testingg'
      fill_in 'member_current_city', with: 'College Station'
      fill_in 'member_company', with: 'Dell'
      find(:css, '#member_position_ids_1').set(true)

      click_on('Submit')

      expect(page).to have_content('Testfirst_name')
      expect(page).to have_content('Testlast_name')
      expect(page).to have_content('2016')
    end
end
