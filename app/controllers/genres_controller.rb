class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
        @lyrics = @genre.lyrics
    end
end
