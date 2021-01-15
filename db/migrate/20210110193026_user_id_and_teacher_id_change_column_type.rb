class UserIdAndTeacherIdChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :user_id, 'integer USING CAST(user_id AS integer)'
    change_column :appointments, :teacher_id, 'integer USING CAST(teacher_id AS integer)'
  end
end
