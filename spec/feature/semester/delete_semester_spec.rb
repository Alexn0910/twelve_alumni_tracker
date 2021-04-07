require 'rails_helper'

RSpec.describe 'Delete Semester: ', type: :feature do 
    before(:each) do
        Semester.new(
            name: "Delete"
        ).save
    end

    before(:each) do
        @admin = Admin.create(email:"test@gmail.com")
        sign_in @admin
    end



    describe 'When a semester is successfully deleted' do
        it 'it should flash a success notice' do  
            # go to delete page   
            visit semesters_path

            # submit the delete form
            all(:link, 'Destroy')[-1].click

            # make sure  the flash notice is displayed
            expect(page).to have_content("Semester was successfully destroyed.")
        end
    end
end