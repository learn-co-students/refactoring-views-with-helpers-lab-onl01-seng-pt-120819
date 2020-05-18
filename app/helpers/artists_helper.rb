module ArtistsHelper
    def display_artist(song)
        if song && song.artist.present?
            link_to song.artist_name, artist_path(song.artist) 
        else
            link_to "Add Artist", edit_song_path(song)
        end
    end
end


# If an artist is already associated with the song, return a link to the artist's show page
# If an artist is not associated with the song (a.k.a. 'else'), return a link to the song's 
# edit page, with a link text of "Add Artist"
