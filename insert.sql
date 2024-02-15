INSERT into artistes(pseudonyme)
values
('Ногу свело'),
('Дима Билан'),
('Каста'),
('Ария'),
('Арсенал');

INSERT into genres ("name")
values
('Рок'),
('Хип-Хоп'),
('Джаз');

INSERT into artistes_genres  (artist_id, genre_id)
values
(1, 1),
(2, 2),
(3, 2),
(4, 1),
(5, 3);

INSERT into disks  (year_, "name")
values
('2020-01-01 00:00:00', 'Хочу бодаться!'),
('2014-11-25 00:00:00', 'Через все времена'),
('2016-01-01 00:00:00', 'Live In Tallinn 74');

INSERT into artistes_disks (artist_id, disk_id)
values
(1, 1),
(4, 2),
(5, 3);

INSERT into tracks (disk_id, duration, "name")
values
(2, 5.5, 'Точка невозврата'),
(2, 7.1, 'Город'),
(1, 2.5, 'Хочу бодаться!'),
(1, 3.2, 'Фол'),
(3, 5.17, 'Arsenal Live in Tallinn 74'),
(3, 2.45, 'Spinning Wheel'),
(3, 2.45, 'My love');

INSERT into collections (year_ , "name")
values
('2023-01-01 00:00:00', 'Рок хиты 2023'),
('2024-01-01 00:00:00', 'Рок хиты 2024'),
('2022-01-01 00:00:00', 'Рок и Джаз. Наши'),
('2020-01-01 00:00:00', 'ДжазРок');

INSERT into collections_tracks (collection_id , track_id)
values
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 1),
(3, 2),
(3, 5),
(4, 3),
(4, 4),
(4, 6);


