class Admin::LyricsController < AdminController
    
    def index
        @lyrics = Lyric.all 
    end
    
end
