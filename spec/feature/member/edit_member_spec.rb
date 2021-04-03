require 'rails_helper'

RSpec.describe 'Edit Member: ', type: :feature do

    before(:all) do
        Member.new(
            first_name: "Nick",
            last_name: "Wanner",
            class_year: 2016,
            major: "computer engineering",
            email: "nickrwann@gmail.com",
            phone: "8323490727",
            socialMediaL: "social media",
            socialMediaI: "social media",
            socialMediaF: "",
            socialMediaT: "",
            socialMediaO: "",
            current_city: "College Station",
            company: "Dell",
            startDate: Time.new,
            endDate: Time.new,
            position_ids: [Position.last.id],
            semester_ids: [Semester.last.id]
        ).save
    end

    before(:each) do
        @admin = Admin.create(email:"test@gmail.com")
        sign_in @admin
    end

    describe 'When a member is successfully edited' do

        it 'it should flash a success notice' do  
            # go to edit page   
            visit edit_member_path(Member.last.id)

            # submit the edit form
            click_on ("Submit")

            # make sure  the flash notice is displayed
            expect(page).to have_content("Member updated successfully")
        end
    end

    describe 'When a member is successfully edited' do
        it 'the updated member should display the new details' do  
            
            # go to edit page   
            visit edit_member_path(Member.last.id)

            # edit the member
            fill_in "member_first_name", with: "NewTestfirst_name"
            fill_in "member_last_name", with: "NewTestlast_name"

            # submit the edit form
            click_on ("Submit")

            # make sure  the flash notice is displayed
            expect(page).to have_content("NewTestfirst_name")
            expect(page).to have_content("NewTestlast_name")
        end
    end

    describe 'When a member is unsuccessfully edited' do
        it 'the page should not change' do  
            
            # go to edit page   
            visit edit_member_path(Member.last.id)

            # edit the member
            fill_in "member_first_name", with: ""

            # submit the edit form
            click_on ("Submit")

            # make sure  the flash notice is displayed
            expect(page).to have_content("Fields marked with (*) are required.")
        end
    end

end