class ConfigClasses2 < ActiveRecord::Migration
  def change
  	add_column :discipleship_classes, :user_id, :integer
  	add_reference :users, index: true, foreign_key: true
  	add_index :discipleship_classes, [:user_id, :created_at]
  end
end
