class AddExpectMoneyInvestDateInvestTypeToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :expect_money, :string
    add_column :orders, :invest_date, :date
    add_column :orders, :invest_type, :string
  end
end
