class AddBillNameToBills < ActiveRecord::Migration[5.1]
  def change
    add_column :bills, :bill_name, :string
  end
end
