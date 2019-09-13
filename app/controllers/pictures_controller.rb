class PicturesController < ApplicationController
  
  def new
    @club = Club.find(params[:club_id])
  end

  def create
    @club = Club.find(params[:club_id])
    @club.picture.attach(params[:picture])
    if @club.picture.attached?
      redirect_to(club_path(@club))
    else
      flash[:warning] = "Veuillez insérer une image"
      render 'new'
    end
  end
  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
