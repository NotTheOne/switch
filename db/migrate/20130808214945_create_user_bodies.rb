class CreateUserBodies < ActiveRecord::Migration
  def change
    create_table :user_bodies do |t|
      t.integer :weight_kg, null: false
      t.integer :height_cm, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end
