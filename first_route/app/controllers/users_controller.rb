class UsersController < ApplicationController
  def index
    users = User.all
    
    render json: users
  end
  
  def show
    user = User.find(params[:id])
    
    render json: user
  end
  
  def create
    user = User.new(user_params)
    
    if user.save
      render plain: "We now have a #{params[:username]}"
    else
      render json: user.errors.full_message, status: 422
    end
  end
  
  def update
    user = User.find(params[:id])
    
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_message, status: 418
    end
  end
  
  def destroy
    user = User.find(params[:id])
    # username = user.username
    user.destroy
    render plain: "I have destoryed #{user.username} for you master"
  end
  
  
  private
  def user_params
    params.require(:user).permit(:username)
  end
  
  
end