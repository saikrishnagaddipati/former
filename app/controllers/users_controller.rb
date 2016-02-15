class UsersController < ApplicationController

	def new # we create a new view called new.html.erb
		@user = User.new() 
	end

# def show
# 	@user = User.find(params[:id])
# end


	def create #we creatre a new view called create.html.erb
		@user = User.new(user_params)
		 @user.save
		#redirect_to @user#:action => :new
		#render :new
	    
	end



private

def user_params
	params.require(:user).permit(:name, :email, :phone)
end

end
