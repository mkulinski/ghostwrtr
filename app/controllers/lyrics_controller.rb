class LyricsController < ApplicationController
    
    # def show
    #     @genre = Genre.find(params[:id])
    #     @lyrics = @genre.lyrics
    # end
    
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
        return render_not_found if @lyric.blank?
    end
    
    def edit
        @lyric = Lyric.find_by_id(params[:id])
        return render_not_found if @lyric.blank?
    end
    
    def update
        @lyric = Lyric.find_by_id(params[:id])
        
        @lyric.update_attributes(lyric_params)
        
        if @lyric.valid?
            redirect_to root_path
        else
            return render :edit, status: :unprocessable_entity
        end
    end
    
    private
    
    def render_not_found
        render text: 'Not Found :(', status: :not_found
    end
    
    def lyric_params
       params.require(:lyric).permit(:title, :genre, :song_lyrics, :image)
    end
    
end
