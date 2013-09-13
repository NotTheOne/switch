class ResultsController < ApplicationController

	def index
		@weight = UserBody.last.weight_kg
		@height = UserBody.last.height_cm
		@ideal_weight= UserBody.last
	end

	def result
	end

	
end
