class GenresController < ApplicationController
    def new 
        @genre = Genre.new
    end 

    def create
        # byebug
        @genre = Genre.new(post_params(:name))
        @genre.save 
        redirect_to @genre

    end 

    def show
        @genre = Genre.find(params[:id])
    end 

    def edit
        @genre = Genre.find(params[:id])
      
    end 

    def update
        @genre = Genre.find(params[:id])
        @genre.update(post_params(:name))
        redirect_to @genre

    end 

    private 
    def post_params(*args)
        params.require(:genre).permit(*args)
    end 
end
