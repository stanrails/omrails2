class AddUserid < ActiveRecord::Migration
  def change
  	add_column :discipleship_classes, :user_id, :integer
  end
end
