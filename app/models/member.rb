class Member < ApplicationRecord
    has_and_belongs_to_many :positions
    
    validates :firstName, presence: true, allow_blank: false
    validates :lastName, presence: true, allow_blank: false
    validates :classYear, presence: true, allow_blank: false
    validates :position, presence: true, allow_blank: false
    validates :email, presence: true, allow_blank: false
    validates :phone, presence: true, allow_blank: false
    validates :socialMedia, presence: true, allow_blank: true
    validates :currentCity, presence: true, allow_blank: false
    validates :company, presence: true, allow_blank: true
    validates :startDate, presence: true, allow_blank: false
    validates :endDate, presence: true, allow_blank: false
end
