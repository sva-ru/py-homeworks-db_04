-- Задание 2


-- Название и продолжительность самого длительного трека
select name, duration
from track
order by duration desc 
limit 1

-- Название треков, продолжительность которых не менее 3,5 минут
select name
from track
where duration >= 3.5

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
select name
from collection
where year_of_release between 2018 and 2020

-- Исполнители, чьё имя состоит из одного слова
select name
from artist
where array_length(regexp_split_to_array(name, '\s+'), 1) = 1;

-- Название треков, которые содержат слово «мой» или «my»
select name
from track
where lower(name) like '%my%'

-- Задание 3

-- Количество исполнителей в каждом жанре
select title g, count(a.name)
from genre g left join genre_artist ga on ga.genres_id  = g.id 
left join artist a on a.id = ga.artist_id
group by g

-- Количество треков, вошедших в альбомы 2019–2020 годов
select count(t.name)
from track t join album a on t.album_id = a.id
where a.year_of_release between 2019 and 2020

-- Средняя продолжительность треков по каждому альбому
select a.title, avg(t.duration)
from album a join track t on a.id  = t.album_id
group by a.title

--Все исполнители, которые не выпустили альбомы в 2020 году
select a.name
from artist a join artist_album aa on a.id = aa.artist_id 
join album al on al.id  = aa.album_id
where al.year_of_release <> 2020

--Названия сборников, в которых присутствует конкретный исполнитель (Billie Eilish)
select c.name
from collection c join track_collection tc on c.id = tc.collection_id 
join track t on t.id = tc.track_id join artist_album aa on aa.album_id  = t.album_id
join artist a on a.id  = aa.artist_id
where a.name = 'Billie Eilish'
group by c."name" 
