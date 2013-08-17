require 'spec_helper'

describe 'shows the result of ideal weight to the user' do
	
	it 'shows the result of the ideal weight to the user' do
		visit results_path
		expect(page).to have_content('Your ideal weight is')
	end

end