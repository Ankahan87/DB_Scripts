create table if not exists Genres (
id serial primary key,
name varchar(60) not null
);

create table if not exists Artistes (
id serial primary key,
pseudonyme varchar(200) not null
);

create table if not exists Disks (
id serial primary key,
name varchar(200) not null,
year_ varchar(4) not null
);

create table if not exists Tracks (
id serial primary key,
name varchar(200) not null,
duration varchar(5),
disk_id integer not null references Disks(id)
);

create table if not exists Collections (
id serial primary key,
name varchar(200) not null,
year_ varchar(4) not null
);

create table if not exists Artistes_disks (
id serial primary key,
artist_id integer not null references Artistes(id),
disk_id integer not null references Disks(id)
);

create table if not exists Collections_tracks (
id serial primary key,
collection_id integer not null references Collections(id),
track_id integer not null references Tracks(id)
);