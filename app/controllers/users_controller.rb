class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id]) || @user.id
    @gifs = Gif.all
    # find_all(owner: "#{@user.email}")
  end

  def edit
    @user = User.find(params[:id]) || @user.id
  end

  def update
    
  end

end
