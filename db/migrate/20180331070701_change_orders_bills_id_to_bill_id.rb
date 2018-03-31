class ChangeOrdersBillsIdToBillId < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :bills_id, :bill_id
  end
end
