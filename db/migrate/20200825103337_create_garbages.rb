class CreateGarbages < ActiveRecord::Migration[6.0]
  def change
    create_table :garbages do |t|
      t.string :color
      t.references :place, null: false, foreign_key: true
      t.string :accepted_materials, array: true

      t.timestamps
    end
  end
end
