class CreateDiscipleshipClasses < ActiveRecord::Migration
  def change
    create_table :discipleship_classes do |t|
      t.date :class_date
      t.string :title

      t.timestamps null: false
    end
  end
end
