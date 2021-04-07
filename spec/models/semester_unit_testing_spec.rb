require 'rails_helper'

RSpec.describe Semester, type: :model do
  subject do
    described_class.new(
      name: 'Fall 1999'
    )
  end

  it 'Is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'Is not valid without a name' do
    subject.name = nil
    expect(subject).not_to be_valid
  end

end
