class UserBodiesController < ApplicationController

	def new
		@user = UserBody.new
	end

	def create
		@user = UserBody.new(params[:user_body])
		if @user.save!
			redirect_to root_path
		else
			render new
		end
	end

end