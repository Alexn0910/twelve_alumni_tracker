require 'rails_helper'

RSpec.describe 'Show Populated Semester: ', type: :feature do

    before(:all) do
        Semester.new(
            name: "Spring 1999"
        ).save
    end

    before(:each) do
        @admin = Admin.create(email:"test@gmail.com")
        sign_in @admin
    end

    describe 'When a fully populated semester is shown' do
        it 'it should have the semester name' do
            visit semester_path(Semester.last.id)
            expect(page).to have_content(Semester.last.name)
        end
    end
end