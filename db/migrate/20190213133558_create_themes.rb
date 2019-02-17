class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.string :hash_tag, null: false, unique: true

      t.timestamps
    end
  end
end
