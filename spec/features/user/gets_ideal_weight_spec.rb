require 'spec_helper'

describe 'shows the ideal weight to the user' do
	
	it 'user inputs weight, height and age' do
		previous_count = UserBody.count
		visit '/user_bodies/new'
		select('Male', :from => 'Gender')
		fill_in('Weight in kg', :with => 93)
		fill_in('Height in cm', :with => 196)
		fill_in('Age', :with => 33 )
		click_on('I am done')
		expect(UserBody.count).to eql(previous_count + 1)
	end

end