json.extract! music, :id, :song_name, :song_popularity, :points, :created_at, :updated_at
json.url music_url(music, format: :json)
