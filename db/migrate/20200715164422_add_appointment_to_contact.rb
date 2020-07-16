class AddAppointmentToContact < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :appointment1, :date
    add_column :contacts, :appointment2, :date
  end
end
