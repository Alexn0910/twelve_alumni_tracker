class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :firstName
      t.string :lastName
      t.integer :classYear
      t.string :major
      t.string :email
      t.string :phone
      t.string :socialMediaL
      t.string :socialMediaI
      t.string :socialMediaT
      t.string :socialMediaF
      t.string :socialMediaO
      t.string :currentCity
      t.string :company
      t.timestamp :startDate
      t.timestamp :endDate

      t.timestamps
    end
  end
end
