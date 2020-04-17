class ArtistsController < ApplicationController
    def index
    end

    def new
        @artist = Artist.new
    end
    
    def show
        @artist = Artist.find_by(id: params[:id])
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to @artist
    end

    def edit
        @artist = Artist.find_by(id: params[:id])
    end

    def update
        @artist = Artist.find_by(id: params[:id])
        @artist.update(artist_params)
        redirect_to @artist
    end

    def destroy
    end

    private

    def artist_params
        params.require(:artist).permit(:name)
    end
end
