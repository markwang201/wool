class AddInvestCountInvestRangeToBills < ActiveRecord::Migration[5.1]
  def change
    add_column :bills, :invest_count, :int
    add_column :bills, :invest_range, :string
  end
end
