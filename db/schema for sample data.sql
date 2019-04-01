drop database if exists project2_dev;
create database project2_dev;
USE project2_dev;

CREATE TABLE usertrees
(
    id int not null
    auto_increment,
    latitude varchar
    (255),
    longitude varchar
    (255),
    tree_image_link varchar
    (255),
   date_planted date,
   name_of_tree varchar
    (255),
   users_tree_name varchar
    (255),
    treename varchar
    (255),
    treetype varchar
    (255),
   UserId int,
createdAt TIMESTAMP default CURRENT_TIMESTAMP,
updatedAt TIMESTAMP,
   primary key
    (id)
);

    CREATE TABLE users
    (
        id int not null
        auto_increment,
    firstName varchar
        (255),
    lastName varchar
        (255),
   dob date,
    city varchar
        (255),
   state varchar
        (255),
   country varchar
        (255),
   profile_image_link varchar
        (255),
   email varchar
        (255),
   password varchar
        (255),
        isAdmin boolean default 0,
        createdAt TIMESTAMP
default CURRENT_TIMESTAMP,
updatedAt TIMESTAMP,
   primary key
        (id)
);

        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-89.0325', '62.9604', 'oxtXNfamTiyTIfkfqj3L', '2013-08-23', 'Almond', 'Hope', 'Almond', '', 1);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('marshall', 'mills', '1970-01-13', 'orange', 'new south wales', 'AU', 'exuA6PZVSVqbcoiRqAbF', 'marshall.mills@example.com', 'fantasy');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('4.5721', '-77.1734', 'oxtXNfamTiyTIfkfqj3L', '2005-10-11', 'Almond', 'Hope', 'Almond', '', 2);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('eloane', 'rolland', '1969-07-26', 'boulogne-billancourt', 'creuse', 'FR', 'ZVlSGdjIQZqxs3cAAF1R', 'eloane.rolland@example.com', 'bulldog1');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-25.5119', '24.3552', 'oxtXNfamTiyTIfkfqj3L', '2005-11-02', 'Almond', 'Hope', 'Almond', '', 3);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('joaquin', 'duran', '1952-11-03', 'talavera de la reina', 'islas baleares', 'ES', 'exuA6PZVSVqbcoiRqAbF', 'joaquin.duran@example.com', 'sanity72');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('75.1212', '-32.6642', 'oxtXNfamTiyTIfkfqj3L', '2003-05-06', 'Almond', 'Hope', 'Almond', '', 4);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('ece', 'öztürk', '1966-12-26', 'bilecik', 'aydın', 'TR', 'ZVlSGdjIQZqxs3cAAF1R', 'ece.öztürk@example.com', 'penguin1');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-84.3849', '-40.9', 'oxtXNfamTiyTIfkfqj3L', '2010-12-02', 'Almond', 'Hope', 'Almond', '', 5);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('gilbert', 'lawrence', '1955-04-01', 'port macquarie', 'northern territory', 'AU', 'exuA6PZVSVqbcoiRqAbF', 'gilbert.lawrence@example.com', 'pumper');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('7.4478', '41.9969', 'oxtXNfamTiyTIfkfqj3L', '2005-04-01', 'Almond', 'Hope', 'Almond', '', 6);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('lily', 'ramos', '1982-05-20', 'lichfield', 'somerset', 'GB', 'ZVlSGdjIQZqxs3cAAF1R', 'lily.ramos@example.com', 'wood');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-83.2608', '-45.2814', 'oxtXNfamTiyTIfkfqj3L', '2018-03-08', 'Almond', 'Hope', 'Almond', '', 7);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('gavin', 'robertson', '1971-06-02', 'wollongong', 'western australia', 'AU', 'exuA6PZVSVqbcoiRqAbF', 'gavin.robertson@example.com', 'coltrane');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-78.7699', '-82.0588', 'oxtXNfamTiyTIfkfqj3L', '2013-02-24', 'Almond', 'Hope', 'Almond', '', 8);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('eleonara', 'rezende', '1982-12-28', 'sinop', 'distrito federal', 'BR', 'ZVlSGdjIQZqxs3cAAF1R', 'eleonara.rezende@example.com', 'matty');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('70.3', '146.7248', 'oxtXNfamTiyTIfkfqj3L', '2005-12-23', 'Almond', 'Hope', 'Almond', '', 9);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('umut', 'adıvar', '1956-12-20', 'tunceli', 'nevşehir', 'TR', 'exuA6PZVSVqbcoiRqAbF', 'umut.adıvar@example.com', 'bernard');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-9.183', '-57.4836', 'oxtXNfamTiyTIfkfqj3L', '2010-01-10', 'Almond', 'Hope', 'Almond', '', 10);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('iina', 'ylitalo', '1951-12-26', 'laukaa', 'central finland', 'FI', 'ZVlSGdjIQZqxs3cAAF1R', 'iina.ylitalo@example.com', 'fester');
    