class AddBmiToUserbodyModel < ActiveRecord::Migration
  def up
  	add_column :user_bodies, :bmi, :float
  end

  def down
  	remove_column :user_bodies, :bmi
  end
end
