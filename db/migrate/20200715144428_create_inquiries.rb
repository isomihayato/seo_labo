class CreateInquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :requirement
      t.string :remark

      t.timestamps
    end
  end
end
