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
            startDate: DateTime.Now,
            endDate: DateTime.Now,
            position_ids: ["Member"]
        )
    }

    it 'Is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'Unit Test: Is not valid without a first name' do
        subject.firstName = nil
        expect(subject).to_not be_valid
    end

end