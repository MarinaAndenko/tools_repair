class CreateTools < ActiveRecord::Migration[5.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :country
      t.string :brand
      t.date :production_year
      t.string :type

      t.timestamps
    end
  end
end
