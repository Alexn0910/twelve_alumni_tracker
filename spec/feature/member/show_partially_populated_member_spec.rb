require 'rails_helper'

RSpec.describe 'Show Partially Populated Member: ', type: :feature do

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

    describe 'When a fully populated member is shown' do
        it 'it should have the members first name' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.first_name)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members last name' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.last_name)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members email' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.email)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members phone number' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.phone)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the social media section' do
            visit member_path(Member.last.id)
            expect(page).to have_content("Social Media")
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members LinkedIn' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.socialMediaL)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members Instagram' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.socialMediaI)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members major' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.major)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members class year' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.class_year)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members current city' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.current_city)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members company' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.company)
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members join date' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.startDate.strftime("%B %Y"))
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members end date' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.endDate.strftime("%B %Y"))
        end
    end

    describe 'When a fully populated member is shown' do
        it 'it should have the members positions' do

            visit member_path(Member.last.id)

            for i in Member.last.position_ids
                expect(page).to have_content(Position.find(i).name)
            end
        end
    end

end