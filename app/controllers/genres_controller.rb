class GenresController < ApplicationController
    def show
        @genre = Genre.find_by_id(params[:id])
        @lyrics = @genre.lyrics
    end
    
    
end


