class ChangeBillContentType < ActiveRecord::Migration[5.1]
  def change
    change_column :bills, :content, :text, :limit => 4294967295
  end
end
