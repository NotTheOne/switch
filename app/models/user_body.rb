class UserBody < ActiveRecord::Base
  attr_accessible :age, :height_cm, :weight_kg, :gender, :bmi

  validates_presence_of :age, :height_cm, :weight_kg, :gender

  GENDERS = ['Male','Female']	

  def bmi(height, weight)	# if we used self to make it a class method
  	 
  	height = height / 100.0
  	height = height ** 2
  	weight / height
  end

  def weight
    debugger
  	if gender == 'Male'
  		((height_cm - 154) * 0.9) + 50

  	else
      ((height_cm -154) * 0.9)+ 45.5
 		end
 	end

end


# IBW (kg) for men = [(height (cm) -154) x 0.9] + 50

# IBW (kg) for women = [(height (cm) -154) x 0.9] + 45.5