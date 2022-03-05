class CreateToilets < ActiveRecord::Migration[6.1]
  def change
    create_table :toilets do |t|
      t.string :address
      t.float :longtitude
      t.float :latitude
      t.text :description
      t.boolean :toilets_option
      t.boolean :shower_option
      t.boolean :baby_changing_table_option
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
