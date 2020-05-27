module ArtistsHelper

    def display_artist(song)
        if !song.artist || song.artist.name == ""
            link_to "Add Artist", edit_song_path(song)
        else
           link_to song.artist.name, artist_path(song.artist)
        end
        
    end
end
