class CreateWebImages < ActiveRecord::Migration[6.0]
  def change
    create_table :web_images do |t|
      t.string :place
      t.string :image

      t.timestamps
    end
  end
end
