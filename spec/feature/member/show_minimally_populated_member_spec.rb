require 'rails_helper'

RSpec.describe 'Show Populated Member: ', type: :feature do

    before(:all) do
        Member.new(
            firstName: "Nick",
            lastName: "Wanner",
            socialMediaL: "",
            socialMediaI: "",
            socialMediaF: "",
            socialMediaT: "",
            socialMediaO: "",
            classYear: 2016,
            major: "computer engineering",
            email: "nickrwann@gmail.com",
            currentCity: "College Station",
            company: "",
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

    describe 'When a minimally populated member is shown' do
        it 'it should have the members first name' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.firstName)
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should have the members last name' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.lastName)
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should have the members email' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.email)
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should not have the social media section' do
            visit member_path(Member.last.id)
            expect(page).not_to have_content("Social Media")
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should not have the LinkedIn section' do
            visit member_path(Member.last.id)
            expect(page).not_to have_content("LinkedIn")
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should not have the Instagram section' do
            visit member_path(Member.last.id)
            expect(page).not_to have_content("Instagram")
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should not have the Facebook section' do
            visit member_path(Member.last.id)
            expect(page).not_to have_content("Facebook")
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should not have the Twitter section' do
            visit member_path(Member.last.id)
            expect(page).not_to have_content("Twitter")
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should not have the Other section' do
            visit member_path(Member.last.id)
            expect(page).not_to have_content("Other")
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should have the members major' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.major)
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should have the members class year' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.classYear)
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should have the members current city' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.currentCity)
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should have the members join date' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.startDate.strftime("%B %Y"))
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should have the members end date' do
            visit member_path(Member.last.id)
            expect(page).to have_content(Member.last.endDate.strftime("%B %Y"))
        end
    end

    describe 'When a minimally populated member is shown' do
        it 'it should have the members positions' do

            visit member_path(Member.last.id)

            for i in Member.last.position_ids
                expect(page).to have_content(Position.find(i).name)
            end
        end
    end

end