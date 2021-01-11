class AddColumnToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :details, :string
  end
end
