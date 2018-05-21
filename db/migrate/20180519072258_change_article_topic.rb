class ChangeArticleTopic < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :topic, foreign_key: true
  end
end
