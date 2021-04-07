class Semester < ApplicationRecord
    has_and_belongs_to_many :members

    validates :name, presence: true, allow_blank: false
end
