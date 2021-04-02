require 'rails_helper'

RSpec.describe 'Edit Member: ', type: :feature do

    before(:each) do
        Member.new(
            first_name: "Delete",
            last_name: "Test",
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
            position_ids: [Position.last.id]
        ).save
    end

    before(:each) do
        @admin = Admin.create(email:"test@gmail.com")
        sign_in @admin
    end

    describe 'When a member is successfully deleted' do
        it 'it should flash a success notice' do  
            # go to edit page   
            visit delete_member_path(Member.last.id)

            # submit the edit form
            click_on ("Delete")

            # make sure  the flash notice is displayed
            expect(page).to have_content("deleted successfully")
        end
    end

    # describe 'When a member is successfully deleted' do
    #     it 'the member shouldnt still be in the record' do 
    #         # go to edit page   
    #         visit delete_member_path(Member.last.id)

    #         # submit the edit form
    #         click_on ("Delete")

    #         # make sure  the flash notice is displayed
    #         expect(Member.last.first_name).not_to eq("Delete")
    #     end
    # end

    # describe 'When the delete member process is cancelled' do
    #     it 'the member should still be in the record' do 
    #         # go to edit page   
    #         visit delete_member_path(Member.last.id)

    #         # submit the edit form
    #         click_on ("Cancel")

    #         # make sure  the flash notice is displayed
    #         expect(Member.last.first_name).to eq("Delete")

    #         # delete it anyway 
    #         visit delete_member_path(Member.last.id)
    #         click_on ("Delete")
    #     end
    # end
end