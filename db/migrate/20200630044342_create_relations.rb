class CreateRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :relations do |t|
      t.references :result, foreign_key: true
      t.references :member, foreign_key: true

      t.timestamps

      t.index [:result_id,:member_id], unique:true
    end
  end
end
