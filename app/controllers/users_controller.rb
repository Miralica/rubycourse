class UsersController < ApplicationController
	def index
		if params[:sort].nil?
			@sort = "created_at"
		else
			@sort = params[:sort]
		end
		@users = User.order(params[:sort]).paginate(per_page: 5, page: params[:page])
	end

	def new
		@user = User.new
	end
	def create
        @user = User.create(name: params[:user][:name], lastname: params[:user][:lastname], email: params[:user][:email])
        if @user.errors.empty?
        	redirect_to user_path(@user)
        else
        	render "new"
        end 
	end
	def show
		@user =User.find(params[:id])
		#redirect_to user_path(@user)
	end
end
