class LyricsController < ApplicationController
    def index
        @lyrics = Lyric.all  
    end
    
    def new
        @lyric = Lyric.new
    end
    
    def create
        Lyric.create(lyric_params)
        redirect_to lyrics_path
    end
    
    # def show
    #     @lyric = Lyric.find(params[:id])
    # end
    
    private
    
    def lyric_params
       params.require(:lyric).permit(:title)
    end
    
end
