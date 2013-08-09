require 'spec_helper'

describe 'User enters home page' do 
	it 'welcomes user to the page' do
		visit root_path
		expect(page).to have_content('Welcome to Switch!')
		expect(page).to have_content('Sign In')
		expect(page).to have_content('Sign Up')
	end

	

end