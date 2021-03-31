class CreateJoinTableSemesterMember < ActiveRecord::Migration[6.1]
  def change
    create_join_table :semesters, :members do |t|
      # t.index [:semester_id, :member_id]
      # t.index [:member_id, :semester_id]
    end
  end
end
