class UsersController < ApplicationController
  def index
    # render plain: "I'm in the index action!"
    users = User.all
    render json: users
  end
  def show
    # user = Users.find(params[:id])
    user = User.find(params[:id])
    render json: user
  end
  
  def create
    user = User.new(params.require(:user).permit(:name, :email))
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end
  
  def update
    user = User.find(params[:id])
    
    
  end
  
  private
  def user_params
    params.require(:user).permit(:id, :name)
  end
end