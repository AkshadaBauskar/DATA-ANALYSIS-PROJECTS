-- create table
DROP TABLE IF EXISTS spotify;
CREATE TABLE spotify (
    artist VARCHAR(255),
    track VARCHAR(255),
    album VARCHAR(255),
    album_type VARCHAR(50),
    danceability FLOAT,
    energy FLOAT,
    loudness FLOAT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    duration_min FLOAT,
    title VARCHAR(255),
    channel VARCHAR(255),
    views FLOAT,
    likes BIGINT,
    comments BIGINT,
    licensed BOOLEAN,
    official_video BOOLEAN,
    stream BIGINT,
    energy_liveness FLOAT,
    most_played_on VARCHAR(50)
);

select * from spotify limit 3;

-- Exploratory Data Analysis(EDA)
Select count(*) from spotify;

Select count(distinct artist) from spotify;

Select count(distinct album) from spotify;

Select distinct album_type from spotify;

Select MAX(duration_min), MIN(duration_min) from spotify;

Select * from spotify 
where duration_min=0;

Delete from spotify where duration_min=0;

Select * from spotify 
where duration_min=0;

Select Count(distinct channel) from spotify;

Select distinct most_played_on from spotify;

------------------------------------------
-- Business Problems Data Analysis - Easy
------------------------------------------
-- 1. Retrieve the names of all tracks that have more than 1 billion streams.

Select title FROM spotify
where Stream > 1000000000;

-- 2. List all albums along with their respective artists.

Select DISTINCT album, artist FROM spotify order by 1;

-- 3. Get the total number of comments for tracks where licensed = TRUE.
Select SUM(comments)
FROM spotify
WHERE licensed = TRUE;

-- 4. Find all tracks that belong to the album type single.
Select track
FROM spotify
where album_type = 'single';

-- 5. Count the total number of tracks by each artist.
Select artist, Count(track) as total_songs
FROM spotify
GROUP BY artist
ORDER BY 2;

------------------------------------------
MEDIUM LEVEL
---------------------------------------------
-- Calculate the average danceability of tracks in each album.
SELECT album, ROUND(AVG(danceability):: numeric, 2) as avg_danc
FROM spotify
GROUP BY album
ORDER BY 2 DESC;

-- Find the top 5 tracks with the highest energy values.
SELECT track, energy
FROM spotify
ORDER BY energy DESC
LIMIT 5;

-- List all tracks along with their views and likes where official_video = TRUE.
SELECT track, SUM(views) as total_views, SUM(likes) as total_likes
FROM spotify
WHERE official_video = 'TRUE'
GROUP BY track
ORDER BY total_likes DESC;

-- For each album, calculate the total views of all associated tracks.
SELECT album, SUM(views) as total_views
FROM spotify
GROUP BY album
ORDER BY total_views DESC;

-- Retrieve the track names that have been streamed on Spotify more than YouTube.
SELECT * FROM
(SELECT track,
		COALESCE(SUM(CASE WHEN most_played_on = 'Youtube' THEN stream END),0) as streamed_on_youtube,
		COALESCE(SUM(CASE WHEN most_played_on = 'Spotify' THEN stream END),0) as streamed_on_spotify
FROM spotify
GROUP BY track) as t1
WHERE streamed_on_spotify > streamed_on_youtube
AND streamed_on_youtube != 0;

--------------------------------
-- ADVANCED LEVEL
----------------------------------
-- Find the top 3 most-viewed tracks for each artist using window functions.
with cte1 AS (SELECT artist,
		track,
		views,
		dense_rank() over(partition by artist order by views DESC) as rnk
FROM spotify)
SELECT * FROM cte1 where rnk<=3;

-- Write a query to find tracks where the liveness score is above the average.
SELECT track, liveness
FROM spotify
WHERE liveness > (SELECT ROUND(AVG(liveness:: numeric), 2) as avg_liveness FROM spotify)
ORDER BY liveness DESC;

-- Use a WITH clause to calculate the difference between the highest and lowest energy values for tracks in each album.
SELECT
	album,
	ROUND((MAX(energy)- MIN(energy))::numeric, 2) as diff_energy
FROM spotify
GROUP BY album
ORDER BY diff_energy DESC;

-- Find tracks where the energy-to-liveness ratio is greater than 1.2.
with cte1 AS 
(SELECT 
(energy/liveness) as energy_to_liveness_ratio
FROM spotify)
SELECT * 
FROM cte1
WHERE energy_to_liveness_ratio > 1.2
order by energy_to_liveness_ratio DESC;

-- Query Optimization
EXPLAIN ANALYZE -- et: 4.329 ms and pt: 0.089 ms
SELECT 
	artist,
	track,
	views
FROM spotify
WHERE artist= 'Gorilla'
AND most_played_on ='youtube'
ORDER BY stream DESC
LIMIT 25;

CREATE INDEX artist_index ON spotify (artist);
 