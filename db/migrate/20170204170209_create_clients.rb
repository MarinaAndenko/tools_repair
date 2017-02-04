class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.text :adress
      t.string :phone_number
      t.string :contact

      t.timestamps
    end
  end
end
