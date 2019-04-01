drop database if exists `mp1wuwmz3yjsrqmz`;
create database `mp1wuwmz3yjsrqmz`;
USE `mp1wuwmz3yjsrqmz`;

CREATE TABLE Usertrees
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

    CREATE TABLE Users
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

        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('25.6212', '87.2299', 'oxtXNfamTiyTIfkfqj3L', '2013-11-26', 'Almond', 'Hope', 'Almond', '', 1);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('noah', 'perkins', '1962-05-16', 'laytown-bettystown-mornington', 'monaghan', 'IE', 'exuA6PZVSVqbcoiRqAbF', 'noah.perkins@example.com', 'pippen');
        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-24.9993', '44.8684', 'oxtXNfamTiyTIfkfqj3L', '2002-08-30', 'Almond', 'Hope', 'Almond', '', 2);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('maria', 'blanco', '1958-06-08', 'vitoria', 'castilla y león', 'ES', 'ZVlSGdjIQZqxs3cAAF1R', 'maria.blanco@example.com', 'warlord');
        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-70.6077', '88.6836', 'oxtXNfamTiyTIfkfqj3L', '2011-08-20', 'Almond', 'Hope', 'Almond', '', 3);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('orandino', 'ramos', '1980-03-07', 'itapecerica da serra', 'minas gerais', 'BR', 'exuA6PZVSVqbcoiRqAbF', 'orandino.ramos@example.com', 'dale');
        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('41.2645', '-76.0583', 'oxtXNfamTiyTIfkfqj3L', '2007-06-16', 'Almond', 'Hope', 'Almond', '', 4);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('fauzia', 'schilders', '1946-03-03', 'eijsden-margraten', 'noord-holland', 'NL', 'ZVlSGdjIQZqxs3cAAF1R', 'fauzia.schilders@example.com', 'businessbabe');
        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-77.3242', '-23.4942', 'oxtXNfamTiyTIfkfqj3L', '2017-09-05', 'Almond', 'Hope', 'Almond', '', 5);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('gino', 'duarte', '1969-04-15', 'palhoça', 'ceará', 'BR', 'exuA6PZVSVqbcoiRqAbF', 'gino.duarte@example.com', 'br549');
        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('26.0386', '101.0744', 'oxtXNfamTiyTIfkfqj3L', '2015-08-28', 'Almond', 'Hope', 'Almond', '', 6);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('patricia', 'watson', '1971-09-04', 'sligo', 'wexford', 'IE', 'ZVlSGdjIQZqxs3cAAF1R', 'patricia.watson@example.com', 'paulie');
        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('78.4731', '-49.7005', 'oxtXNfamTiyTIfkfqj3L', '2002-11-29', 'Almond', 'Hope', 'Almond', '', 7);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('eren', 'özkara', '1958-09-18', 'sinop', 'afyonkarahisar', 'TR', 'exuA6PZVSVqbcoiRqAbF', 'eren.özkara@example.com', 'handsome');
        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('-81.8675', '-21.4571', 'oxtXNfamTiyTIfkfqj3L', '2017-11-29', 'Almond', 'Hope', 'Almond', '', 8);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('jeanette', 'shelton', '1985-05-26', 'kalgoorlie', 'new south wales', 'AU', 'ZVlSGdjIQZqxs3cAAF1R', 'jeanette.shelton@example.com', 'pacific');
        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('60.3002', '13.35', 'oxtXNfamTiyTIfkfqj3L', '2017-04-17', 'Almond', 'Hope', 'Almond', '', 9);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('jasper', 'cooper', '1993-06-08', 'tauranga', 'southland', 'NZ', 'exuA6PZVSVqbcoiRqAbF', 'jasper.cooper@example.com', 'corwin');
        insert into Usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, treename, treetype, UserId)
        values
            ('72.0559', '-53.7015', 'oxtXNfamTiyTIfkfqj3L', '2009-03-25', 'Almond', 'Hope', 'Almond', '', 10);
        insert into Users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('esma', 'aybar', '1957-08-21', 'elazığ', 'uşak', 'TR', 'ZVlSGdjIQZqxs3cAAF1R', 'esma.aybar@example.com', 'zappa');