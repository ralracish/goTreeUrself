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
    treename varchar (255),
    treetype varchar (255),
   UserId int,
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
   primary key
        (id)
);

        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('-86.0576', '91.463', 'oxtXNfamTiyTIfkfqj3L', '2013-11-12', 'Jackson', 'Patsy', 0);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('patsy', 'jackson', '1994-04-10', 'wollongong', 'south australia', 'AU', 'https://randomuser.me/api/portraits/women/41.jpg', 'patsy.jackson@example.com', 'scorpio');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('8.4832', '18.3695', 'njzaDu11QwivwUO7CDmm', '2009-07-06', 'Turner', 'Justin', 1);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('justin', 'turner', '1978-07-02', 'stoke-on-trent', 'lothian', 'GB', 'https://randomuser.me/api/portraits/men/19.jpg', 'justin.turner@example.com', 'butcher');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('-75.5697', '30.2099', 'C5Tn3psQV6LA90D8j2S0', '2017-01-21', 'Farias', 'Lois', 2);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('lois', 'farias', '1985-07-24', 'luziânia', 'espírito santo', 'BR', 'https://randomuser.me/api/portraits/women/81.jpg', 'lois.farias@example.com', 'thewho');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('27.3741', '39.1247', 'ejHDgqcBT2u5b1EVBtmZ', '2009-01-28', 'نجاتی', 'علی', 3);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('علی', 'نجاتی', '1958-07-25', 'گرگان', 'اصفهان', 'IR', 'https://randomuser.me/api/portraits/men/24.jpg', 'علی.نجاتی@example.com', 'gordo');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('-27.0045', '131.1135', 'QWpkx20JT7S4gjmAFd1D', '2017-05-11', 'Pedersen', 'Silje', 4);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('silje', 'pedersen', '1980-02-18', 'saltum', 'hovedstaden', 'DK', 'https://randomuser.me/api/portraits/women/17.jpg', 'silje.pedersen@example.com', 'bobafett');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('-80.5675', '-119.1342', 'Rgy81DcYS7KpBmePpKBZ', '2015-05-16', 'Wallace', 'Chris', 5);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('chris', 'wallace', '1995-03-31', 'traralgon', 'tasmania', 'AU', 'https://randomuser.me/api/portraits/men/33.jpg', 'chris.wallace@example.com', 'bathing');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('25.775', '108.9262', 'uEZsxP4TNed8qvZSHHIr', '2014-12-15', 'Snyder', 'Rebecca', 6);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('rebecca', 'snyder', '1971-09-02', 'portlaoise', 'mayo', 'IE', 'https://randomuser.me/api/portraits/women/63.jpg', 'rebecca.snyder@example.com', 'caligula');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('35.535', '98.7944', 'PZNFWs0mS9WUhP3K7JOt', '2015-09-10', 'یاسمی', 'محمدطاها', 7);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('محمدطاها', 'یاسمی', '1957-01-16', 'خوی', 'آذربایجان غربی', 'IR', 'https://randomuser.me/api/portraits/men/8.jpg', 'محمدطاها.یاسمی@example.com', 'kahuna');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('69.0146', '-93.6413', '5lC3awBtSUS7OsYiTh7h', '2016-01-17', 'Yıldızoğlu', 'Ceylan', 8);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('ceylan', 'yıldızoğlu', '1982-05-23', 'konya', 'tekirdağ', 'TR', 'https://randomuser.me/api/portraits/women/61.jpg', 'ceylan.yıldızoğlu@example.com', 'mustang');
        insert into usertrees
            (latitude, longitude, tree_image_link, date_planted, name_of_tree, users_tree_name, UserId)
        values
            ('-30.9152', '-69.0438', 'VOuToVfQaCP30IxTDMmw', '2009-07-28', 'Christensen', 'Frederik', 9);
        insert into users
            (firstName, lastName, dob, city, state, country, profile_image_link, email, password)
        values
            ('frederik', 'christensen', '1976-02-19', 'askeby', 'sjælland', 'DK', 'https://randomuser.me/api/portraits/men/86.jpg', 'frederik.christensen@example.com', 'global');