resource "spotify_playlist" "Bollywood" {
  name = "Bollywood"
  tracks = ["23ECzhC1G6ZHST2TayB2ut" ,      # 1st Methon Directly Copy paste the Track ID to add the song into the playlist
           "5trLYW0GIV2xESg4lbJrhY" ,
           "7qz4tPvG6hm4XeyjtTKNfT"
            
  ]
}

# 2nd Way to fetch the tracks from the Provider using the Data Block Concept

data "spotify_search_track" "The_Weeknd" {
  artist = "The_Weeknd"
}

resource "spotify_playlist" "HollyWood" {
name = "HollyWood"
tracks = [ data.spotify_search_track.The_Weeknd.tracks[2].id,
data.spotify_search_track.The_Weeknd.tracks[7].id,
data.spotify_search_track.The_Weeknd.tracks[1].id,
data.spotify_search_track.The_Weeknd.tracks[6].id]

}