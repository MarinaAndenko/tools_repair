class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :tool, foreign_key: true, index: true
      t.references :repair, foreign_key: true, index: true
      t.references :client, foreign_key: true, index: true
      t.date :start_date

      t.timestamps
    end
  end
end
