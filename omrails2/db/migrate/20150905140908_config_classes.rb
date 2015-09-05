class ConfigClasses < ActiveRecord::Migration
  def change
  	remove_column :discipleship_classes, :user_id
  end
end
