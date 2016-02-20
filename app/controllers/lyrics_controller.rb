class LyricsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    
    def index
        @lyrics = Lyric.all  
    end
    
    def new
        @lyric = Lyric.new
    end
    
    def create
        current_user.lyrics.create(lyric_params)
        redirect_to lyrics_path
    end
    
    def show
        @lyric = Lyric.find(params[:id])
    end
    
    private
    
    def lyric_params
       params.require(:lyric).permit(:title, :genre, :song_lyrics)
    end
    
end
