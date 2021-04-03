require 'rails_helper'

RSpec.describe Member, type: :model do
  subject do
    described_class.new(
      first_name: 'Nick',
      last_name: 'Wanner',
      class_year: 2016,
      major: 'computer engineering',
      email: 'nickrwann@gmail.com',
      phone: '8323490727',
      socialMediaL: 'social media',
      socialMediaI: 'social media',
      socialMediaF: 'social media',
      socialMediaT: 'social media',
      socialMediaO: 'social media',
      current_city: 'College Station',
      company: 'Dell',
      startDate: Time.new,
      endDate: Time.new,
      position_ids: [Position.last.id],
      semester_ids: [Semester.last.id]
    )
  end

  it 'Is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'Is not valid without a first name' do
    subject.first_name = nil
    expect(subject).not_to be_valid
  end

  it 'Is not valid without an email' do
    subject.last_name = nil
    expect(subject).not_to be_valid
  end

  it 'Is not valid without a class year' do
    subject.class_year = nil
    expect(subject).not_to be_valid
  end

  it 'Is not valid without an email' do
    subject.email = nil
    expect(subject).not_to be_valid
  end

  it 'Is not valid without a start date' do
    subject.startDate = nil
    expect(subject).not_to be_valid
  end

  it 'Is not valid without an end date' do
    subject.endDate = nil
    expect(subject).not_to be_valid
  end

  it 'Is not valid without a position held' do
    subject.position_ids = nil
    expect(subject).not_to be_valid
  end
end
