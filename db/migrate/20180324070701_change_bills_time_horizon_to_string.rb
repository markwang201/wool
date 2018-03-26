class ChangeBillsTimeHorizonToString < ActiveRecord::Migration[5.1]
  def change
    change_column :bills, :time_horizon, :text
  end
end
