class CreatePlatforms < ActiveRecord::Migration[5.1]
  def change
    create_table :platforms do |t|
      t.string :introduce
      t.string :platform_type
      t.string :level
      t.string :logo
      t.string :name

      t.timestamps
    end
  end
end
