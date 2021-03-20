class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :firstName
      t.string :lastName
      t.integer :classYear
      t.string :email
      t.string :phone
      t.string :socialMedia
      t.string :currentCity
      t.string :company
      t.timestamp :startDate
      t.timestamp :endDate

      t.timestamps
    end
  end
end
