select "name", duration from tracks as t
where duration = (select max(duration) from tracks t2);

select "name", duration from tracks as t
where duration >= 3.5;

select "name" from collections c 
where c.year_ between '2018-01-01 00:00:00' AND '2020-12-31 23:59:59';

select pseudonyme from artistes a  
where a.pseudonyme  not like '% %';

select "name" from tracks t  
where lower(t."name") like '%мой%' or lower(t."name") like '%my%';

select g."name", count(ag.artist_id) from genres g 
left join artistes_genres ag on g.id = ag.genre_id 
group by g."name"; 

select d."name", count(t."name")  from disks d 
left join tracks t on d.id = t.disk_id
where d.year_ between '2019-01-01 00:00:00' AND '2020-12-31 23:59:59'
group by d."name";

select d."name", avg(t.duration) from disks d 
left join tracks t on d.id = t.disk_id
group by d."name";

select a.pseudonyme  from artistes a  
left join artistes_disks ad on a.id = ad.artist_id
where ad.disk_id <> (select d.id from disks d where d.year_ between '2020-01-01 00:00:00' AND '2020-12-31 23:59:59');

select c."name" from collections c
left join collections_tracks ct on c.id = ct.collection_id 
where ct.track_id in (
	select t.id from tracks t
	left join disks d on t.disk_id = d.id
	where d.id in (
		select ad.disk_id from artistes a
		left join artistes_disks ad on a.id = ad.artist_id
		where a.pseudonyme like 'Арсенал'));
