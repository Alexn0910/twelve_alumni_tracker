require 'rails_helper'

RSpec.describe Member, :type => :model do

    subject {
        described_class.new(
            firstName: "Nick",
            lastName: "Wanner",
            classYear: 2016,
            email: "nickrwann@gmail.com",
            phone: "8323490727",
            socialMedia: "@_nickwinner_",
            currentCity: "College Station",
            company: "Dell",
            startDate: Time.new,
            endDate: Time.new,
            position_ids: [Position.last.id]
        )
    }

    it 'Is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'Is not valid without a first name' do
        subject.firstName = nil
        expect(subject).to_not be_valid
    end

    it 'Is not valid without an email' do
        subject.lastName = nil
        expect(subject).to_not be_valid
    end

    it 'Is not valid without a class year' do
        subject.classYear = nil
        expect(subject).to_not be_valid
    end

    it 'Is not valid without an email' do
        subject.email = nil
        expect(subject).to_not be_valid
    end

    it 'Is not valid without a phone number' do
        subject.phone = nil
        expect(subject).to_not be_valid
    end

    it 'Is not valid without a current city' do
        subject.currentCity = nil
        expect(subject).to_not be_valid
    end

    it 'Is not valid without a start date' do
        subject.startDate = nil
        expect(subject).to_not be_valid
    end

    it 'Is not valid without an end date' do
        subject.endDate = nil
        expect(subject).to_not be_valid
    end

    it 'Is not valid without a position held' do
        subject.position_ids = nil
        expect(subject).to_not be_valid
    end

end