class Member < ApplicationRecord
  has_and_belongs_to_many :positions
  has_and_belongs_to_many :semesters

  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :class_year, presence: true, allow_blank: false
  validates :major, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :phone, presence: true, allow_blank: true
  validates :socialMediaL, presence: true, allow_blank: true
  validates :socialMediaI, presence: true, allow_blank: true
  validates :socialMediaF, presence: true, allow_blank: true
  validates :socialMediaT, presence: true, allow_blank: true
  validates :socialMediaO, presence: true, allow_blank: true
  validates :current_city, presence: true, allow_blank: true
  validates :company, presence: true, allow_blank: true
  validates :position_ids, presence: true, allow_blank: false
  validates :semester_ids, presence: true, allow_blank: false
end
