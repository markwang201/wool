class ChangePlatformIntroduceType < ActiveRecord::Migration[5.1]
  def change
    change_column :platforms, :introduce, :text, :limit => 4294967295
  end
end
