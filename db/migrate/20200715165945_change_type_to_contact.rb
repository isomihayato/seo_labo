class ChangeTypeToContact < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :appointment1, :datetime
    change_column :contacts, :appointment2, :datetime    
  end
end
