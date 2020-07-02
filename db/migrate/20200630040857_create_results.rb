class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.string :title
      t.string :subscribe
      t.string :image

      t.timestamps
    end
  end
end
