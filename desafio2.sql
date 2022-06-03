SELECT COUNT(*) AS cancoes,
(SELECT COUNT(*) FROM artist) AS artistas,
(SELECT COUNT(*) FROM album) AS albuns FROM SpotifyClone.song;