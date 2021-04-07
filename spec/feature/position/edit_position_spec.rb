require 'rails_helper'

RSpec.describe 'Edit Position: ', type: :feature do

    before(:all) do
        Position.new(
            name: "Nick"
        ).save
    end

    before(:each) do
        @admin = Admin.create(email:"test@gmail.com")
        sign_in @admin
    end

    describe 'When a position is successfully edited' do

        it 'it should flash a success notice' do  
            # go to edit page   
            visit edit_position_path(Position.last.id)

            # submit the edit form
            click_on ("Submit")

            expect(page).to have_content("Position updated successfully")
        end

    end

    describe 'When a position is successfully edited' do
        it 'the updated position should display the new details' do  
            
            # go to edit page   
            visit edit_position_path(Position.last.id)

            # edit the position
            fill_in "position_name", with: "NewTestname"

            # submit the edit form
            click_on ("Submit")

            expect(page).to have_content("NewTestname")
        end
    end

    describe 'When a position is unsuccessfully edited' do
        it 'the page should not change' do  
            
            # go to edit page   
            visit edit_position_path(Position.last.id)

            # edit the position
            fill_in "position_name", with: ""

            # submit the edit form
            click_on ("Submit")

            # make sure  the flash notice is displayed
            expect(page).to have_content("Fields marked with (*) are required.")
        end
    end

end