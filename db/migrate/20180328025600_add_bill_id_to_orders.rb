class AddBillIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :bills, foreign_key: true
  end
end
