class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :grade
      t.integer :age
      t.string :image
      
      t.timestamps
    end
  end
end
