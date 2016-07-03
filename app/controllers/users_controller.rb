class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        
        # if @user.save
        #     send sign-up email
        # else
        #   render 'new' 
        # end
    end
    
    def destroy
        User.find(params[:id]).destroy
        flash[:success] = "User deleted"
        redirect_to users_url        
    end
    
    def update
        
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    private
    
    def user_params
         
    end
end
