class ArtistsController < ApplicationController

    def index
        @artists = Artist.all 
    end

    def create
        @artist = Artist.new(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    def new
        @artist = Artist.new 
    end

    def show
        set_artist
    end

    def edit
        set_artist
    end

    def update
        set_artist
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    def destroy
        set_artist.destroy 
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def set_artist
        @artist = Artist.find_by_id(params[:id])
    end
    
end
