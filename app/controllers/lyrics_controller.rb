class LyricsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    
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
        return render_not_found(:forbidden) if @lyric.user != current_user
    end
    
    def destroy
      @lyric = Lyric.find_by_id(params[:id])
      return render_not_found if @lyric.blank?
      return render_not_found(:forbidden) if @lyric.user != current_user     
      @lyric.destroy
      redirect_to lyrics_path
    end
    
    def update
        @lyric = Lyric.find_by_id(params[:id])
        return render_not_found if @lyric.blank?
        return render_not_found(:forbidden) if @lyric.user != current_user        
        
        @lyric.update_attributes(lyric_params)
        
        if @lyric.valid?
            redirect_to lyrics_path
        else
            return render :edit, status: :unprocessable_entity
        end
    end
    
    private
    
    def render_not_found(status=:not_found)
        render text: "#{status.to_s.titleize} :(", status: status
    end
    
    def lyric_params
       params.require(:lyric).permit(:title, :genre_id, :song_lyrics, :image)
    end
     
end
