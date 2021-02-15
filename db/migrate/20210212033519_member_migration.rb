class MemberMigration < ActiveRecord::Migration[6.1]
  def change
	add_column :members, :president, :boolean
  end
end
