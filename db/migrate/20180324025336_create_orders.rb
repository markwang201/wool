class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :channel, foreign_key: true
      t.references :user, foreign_key: true
      t.references :platform, foreign_key: true
      t.string :phone_num
      t.string :investor_username
      t.string :time_horizon
      t.string :amount
      t.string :alipay
      t.string :alipay_name
      t.string :qq_number
      t.string :qq_name
      t.string :screenshots
      t.string :platform_username
      t.string :status
      t.string :password
      t.text :note

      t.timestamps
    end
  end
end
