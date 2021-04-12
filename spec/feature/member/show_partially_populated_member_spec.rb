require 'rails_helper'

RSpec.describe 'Show Partially Populated Member: ', type: :feature do
  before(:all) do
    Member.new(
      first_name: 'Nick',
      last_name: 'Wanner',
      class_year: 2016,
      major: 'computer engineering',
      email: 'nickrwann@gmail.com',
      phone: '8323490727',
      socialMediaL: 'social media',
      socialMediaI: 'social media',
      socialMediaF: '',
      socialMediaT: '',
      socialMediaO: '',
      current_city: 'College Station',
      company: 'Dell',
      alumniYet: true,
      position_ids: [Position.last.id],
      semester_ids: [Semester.last.id]
    ).save
  end

  before do
    @admin = Admin.create(email: 'twelvetamu@gmail.com')
    sign_in @admin
  end

  describe 'When a fully populated member is shown' do
    it 'has the members first name' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.first_name)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members last name' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.last_name)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members email' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.email)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members phone number' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.phone)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the social media section' do
      visit member_path(Member.last.id)
      expect(page).to have_content('Social Media')
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members LinkedIn' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.socialMediaL)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members Instagram' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.socialMediaI)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members major' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.major)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members class year' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.class_year)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members current city' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.current_city)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members company' do
      visit member_path(Member.last.id)
      expect(page).to have_content(Member.last.company)
    end
  end

  describe 'When a fully populated member is shown' do
    it 'has the members positions' do
      visit member_path(Member.last.id)

      Member.last.position_ids.each do |i|
        expect(page).to have_content(Position.find(i).name)
      end
    end
  end
end
