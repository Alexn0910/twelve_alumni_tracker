require 'rails_helper'

RSpec.describe 'Edit Member: ', type: :feature do

    before(:all) do
        Member.new(
            firstName: "Nick",
            lastName: "Wanner",
            classYear: 2016,
            major: "computer engineering",
            email: "nickrwann@gmail.com",
            phone: "8323490727",
            socialMediaL: "social media",
            socialMediaI: "social media",
            socialMediaF: "",
            socialMediaT: "",
            socialMediaO: "",
            currentCity: "College Station",
            company: "Dell",
            startDate: Time.new,
            endDate: Time.new,
            position_ids: [Position.last.id]
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
            fill_in "member_firstName", with: "NewTestFirstName"
            fill_in "member_lastName", with: "NewTestLastName"

            # submit the edit form
            click_on ("Submit")

            # make sure  the flash notice is displayed
            expect(page).to have_content("NewTestFirstName")
            expect(page).to have_content("NewTestLastName")
        end
    end

    describe 'When a member is unsuccessfully edited' do
        it 'the page should not change' do  
            
            # go to edit page   
            visit edit_member_path(Member.last.id)

            # edit the member
            fill_in "member_firstName", with: ""

            # submit the edit form
            click_on ("Submit")

            # make sure  the flash notice is displayed
            expect(page).to have_content("Fields marked with (*) are required.")
        end
    end

end