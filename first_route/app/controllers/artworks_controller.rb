class ArtworksController < ApplicationController

  def index
    user = User.find(params[:id])
    artworks = user.artworks
    render json: { user: user, artworks: artworks }
  end
  
  def show
    artwork = Artwork.find(params[:id])
    
    render json: artwork
  end
  
  def create
    artwork = Artwork.new(artwork_params)
    
    if artwork.save
      render json: artwork
    else
      render json: user.errors.full_message, status: 422
    end
  end
  
  def update
    artwork = Artwork.find(params[:id])
    
    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_message, status: 418
    end
  end
  
  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render plain: "I have destoryed #{artwork.title} for you master"
  end
  
  

  private
  def artwork_params
    params.require(:artwork).permit(:title, :artist_id, :image_url)
  end
    

end