class AddFeildsArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :push_to_baidu, :boolean, default: true
    add_column :articles, :topic, :string
    add_column :articles, :status, :string
  end
end
