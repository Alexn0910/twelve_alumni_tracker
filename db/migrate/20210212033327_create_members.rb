class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :firstName
      t.string :lastName
      t.date :classYear

      t.timestamps
    end
  end
end
