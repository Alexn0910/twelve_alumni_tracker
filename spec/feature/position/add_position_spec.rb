require 'rails_helper'

RSpec.describe 'Add Position: ', type: :feature do
    
    before(:each) do
        @admin = Admin.create(email:"test@gmail.com")
        sign_in @admin
    end

    it 'is present in the data record' do
      visit new_position_path

      fill_in 'position_name', with: 'assistant_to_the_regional_manager'

      click_on('Submit')

      expect(page).to have_content('assistant_to_the_regional_manager')
    end
end
