class LyricsController < ApplicationController
    def show
        @lyrics = Lyric.all
    end
end
