require 'rails_helper'

RSpec.describe 'Edit Semester: ', type: :feature do

    before(:all) do
        Semester.new(
            name: "Fall 2000",
        ).save
    end

    before(:each) do
        @admin = Admin.create(email:"test@gmail.com")
        sign_in @admin
    end

    describe 'When a semester is successfully edited' do

        it 'it should flash a success notice' do  
            # go to edit page   
            visit edit_semester_path(Semester.last.id)

            # submit the edit form
            click_on ("Submit")

            # make sure  the flash notice is displayed
            expect(page).to have_content("Semester updated successfully")
        end
    end

    describe 'When a semester is successfully edited' do
        it 'the updated semester should display the new details' do  
            
            # go to edit page   
            visit edit_semester_path(Semester.last.id)

            # edit the semester
            fill_in "semester_name", with: "NewTest_name"

            # submit the edit form
            click_on ("Submit")

            # make sure  the flash notice is displayed
            expect(page).to have_content("NewTest_name")
        end
    end

    describe 'When a semester is unsuccessfully edited' do
        it 'the page should not change' do  
            
            # go to edit page   
            visit edit_semester_path(Semester.last.id)

            # edit the semester
            fill_in "semester_name", with: ""

            # submit the edit form
            click_on ("Submit")
            
            # make sure  the flash notice is displayed
            expect(page).to have_content("Fields marked with (*) are required.")
        end
    end

end