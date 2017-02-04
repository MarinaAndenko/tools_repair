class CreateRepairs < ActiveRecord::Migration[5.0]
  def change
    create_table :repairs do |t|
      t.string :name
      t.integer :duration
      t.float :price

      t.timestamps
    end
  end
end
