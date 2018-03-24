class CreateChannels < ActiveRecord::Migration[5.1]
  def change
    create_table :channels do |t|
      t.string :qq_group
      t.string :qq_group_name
      t.string :group_master_qq
      t.string :phone_number
      t.string :master_name

      t.timestamps
    end
  end
end
