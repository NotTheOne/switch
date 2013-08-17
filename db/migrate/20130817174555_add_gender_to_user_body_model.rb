class AddGenderToUserBodyModel < ActiveRecord::Migration
  def up
  	add_column :user_bodies, :gender, :string, null: false
  end

  def down
  	remove_column :user_bodies, :gender
  end
end
