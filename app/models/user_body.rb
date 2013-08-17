class UserBody < ActiveRecord::Base
  attr_accessible :age, :height_cm, :weight_kg, :gender, :bmi

  validates_presence_of :age, :height_cm, :weight_kg, :gender

  GENDERS = ['Male','Female']	

  def self.bmi(height, weight)
  	weight / (convert_height_mts(height) ** 2)
  end

  def convert_height_mts(height)
  	convertion = height / 100
  end

end
