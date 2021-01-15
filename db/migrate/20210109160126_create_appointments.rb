class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :user_id
      t.string :teacher_id
      t.string :date

      t.timestamps
    end
  end
end
