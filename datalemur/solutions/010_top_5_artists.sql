WITH ranked AS
(SELECT 
  artists.artist_name
  , COUNT(*)
  , DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_order
FROM 
  artists
  JOIN songs ON artists.artist_id = songs.artist_id
  JOIN global_song_rank ON songs.song_id = global_song_rank.song_id
WHERE 
  global_song_rank.rank <= 10
GROUP BY 1)

SELECT artist_name, rank_order FROM ranked WHERE rank_order <= 5