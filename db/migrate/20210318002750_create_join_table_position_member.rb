class CreateJoinTablePositionMember < ActiveRecord::Migration[6.1]
  def change
    create_join_table :positions, :members do |t|
      # t.index [:position_id, :member_id]
      # t.index [:member_id, :position_id]
    end
  end
end
