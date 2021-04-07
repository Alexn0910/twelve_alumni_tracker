class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.integer :class_year
      t.string :major
      t.string :email
      t.string :phone
      t.string :socialMediaL
      t.string :socialMediaI
      t.string :socialMediaT
      t.string :socialMediaF
      t.string :socialMediaO
      t.string :current_city
      t.string :company

      t.timestamps
    end
  end
end
