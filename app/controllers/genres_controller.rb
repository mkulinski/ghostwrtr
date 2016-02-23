class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
        @lyric = @genre.lyric_id
    end
end
