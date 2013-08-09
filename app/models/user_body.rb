class UserBody < ActiveRecord::Base
  attr_accessible :age, :height_cm, :weight_kg

  validates_presence_of :age, :height_cm, :weight_kg
end
