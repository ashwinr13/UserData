class UsersController < ApplicationController
	
	def index
		@users = User.order("users.firstname ASC")
	end 

	def show
		@users = User.find(params[:id])
	end

	def new 
		@users = User.new
	end 

	def create 
		@users = User.new(user_params)

		if @users.save 
			redirect_to(:action => 'index')
		else 
			render('new')
		end 
	end 

	def edit
		@users = User.find(params[:id])
	end


	def update
		@users = User.find(params[:id])

		if @users.update_attributes(user_params) 
			redirect_to(:action => 'show', :id => @users.id)
		else 
			render('new')
		end 

	end

	def delete 
		@users = User.find(params[:id])
		@users.destroy
		redirect_to(:action => 'index')
	end


private 

	def user_params
		params.require(:user).permit(:firstname, :lastname, :age, :email, :favoritefood)
	end

end
