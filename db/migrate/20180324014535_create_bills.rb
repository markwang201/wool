class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :doc
      t.text :content
      t.string :register_link
      t.string :apr
      t.float :time_horizon
      t.decimal :per_10000, precision: 15, scale: 5
      t.string :bill_type
      t.string :states
      t.references :channel, foreign_key: true
      t.references :platform, foreign_key: true

      t.timestamps
    end
  end
end
