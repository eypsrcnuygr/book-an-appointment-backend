class AddDefaultValueToStatusForAppointments < ActiveRecord::Migration[6.0]
  def change
    change_column_default :appointments, :status, from: nil, to: 'none'
  end
end
