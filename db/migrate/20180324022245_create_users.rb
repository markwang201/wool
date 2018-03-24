class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :qq_number
      t.string :qq_name
      t.string :alipay
      t.string :alipay_name

      t.timestamps
    end
  end
end
