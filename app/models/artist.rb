class Artist < ActiveRecord::Base
    def songs
        Song.all.where(artist_id: self.id)
    end

    def song_count
        self.songs.length
    end
end
