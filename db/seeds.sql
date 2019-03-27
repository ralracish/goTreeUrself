-- * Insert some data into the table.
use trees_db;

insert into trees( username, email, treephoto) 
values('sub1','sub1@test.com','https://images.all-free-download.com/images/graphicthumb/the_trees_and_the_earth_picture_165541.jpg'),
('sub2','sub2@test.com','https://images.all-free-download.com/images/graphicthumb/the_trees_and_the_earth_picture_165541.jpg'), 
('sub3','sub3@test.com','https://images.all-free-download.com/images/graphicthumb/the_trees_and_the_earth_picture_165541.jpg'), 
('sub4','sub4@test.com','https://images.all-free-download.com/images/graphicthumb/the_trees_and_the_earth_picture_165541.jpg'), 
('sub5','sub5@test.com','https://images.all-free-download.com/images/graphicthumb/the_trees_and_the_earth_picture_165541.jpg');

select * from trees;