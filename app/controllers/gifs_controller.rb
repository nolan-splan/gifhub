class GifsController < ApplicationController
  def index
    @gifs = Gif.all
  end

  def new
    @gif = Gif.new
    @user = current_user
  end

  def create
    @user = User.find_by(email: params[:gif][:gif_owner])

    @gif = User.find(@user.id).gifs.create(gif_params)
    @gif.owner = User.find_by(email: params[:gif][:gif_owner])
    if @gif.save
      redirect_to @gif
    else
      render 'new'
    end
  end
  
  def show
    @gif = Gif.find(params[:id]) || @gif.id
  end

  # def edit

  # end

  def destroy
    @gif = Gif.find(params[:id])
    @gif.destroy
    redirect_to gifs_path
  end

  # def update

  # end

  private
  def gif_params
    params.require(:gif).permit(
      :name,
      :url,
      :description,
    )
  end
end
