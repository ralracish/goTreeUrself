USE project2_dev;

INSERT INTO Users (firstName, lastName, email, password, isAdmin)
VALUES ("Joe", "Gates", "j@g.co", "$2b$10$afGmlGCU0AGEzZBILPyPWOfSclxjMxKocB8QXv8CqhN73IHUUp7Gi", true);

INSERT INTO Users (firstName, lastName, email, password, isAdmin)
VALUES ("Jane", "Jobs", "j@j.co", "$2b$10$afGmlGCU0AGEzZBILPyPWOfSclxjMxKocB8QXv8CqhN73IHUUp7Gi", false);

-- Seeding the trees table.  I'm using general tree names to keep the list manageable. 
-- So instead of white spruce, black spruce, norway spruce, etc. I just have spruce
insert into trees (tree_name, tree_type) values ('Almond','Deciduous');
insert into trees (tree_name, tree_type) values ('Apple','Deciduous');
insert into trees (tree_name, tree_type) values ('Arborvitae','Deciduous');
insert into trees (tree_name, tree_type) values ('Ash','Deciduous');
insert into trees (tree_name, tree_type) values ('Aspen','Deciduous');
insert into trees (tree_name, tree_type) values ('Avacado','Deciduous');
insert into trees (tree_name, tree_type) values ('Balsam','Deciduous');
insert into trees (tree_name, tree_type) values ('Beech','Deciduous');
insert into trees (tree_name, tree_type) values ('Buckeye','Deciduous');
insert into trees (tree_name, tree_type) values ('Cedar','Coniferous');
insert into trees (tree_name, tree_type) values ('Cherry','Deciduous');
insert into trees (tree_name, tree_type) values ('Cottonwood','Deciduous');
insert into trees (tree_name, tree_type) values ('Crabapple','Deciduous');
insert into trees (tree_name, tree_type) values ('Crepe Myrtle','Deciduous');
insert into trees (tree_name, tree_type) values ('Cypress','Deciduous');
insert into trees (tree_name, tree_type) values ('Dogwood','Deciduous');
insert into trees (tree_name, tree_type) values ('Elm','Deciduous');
insert into trees (tree_name, tree_type) values ('Fir','Coniferous');
insert into trees (tree_name, tree_type) values ('Hemlock','Coniferous');
insert into trees (tree_name, tree_type) values ('Hickory','Deciduous');
insert into trees (tree_name, tree_type) values ('Holly','Deciduous');
insert into trees (tree_name, tree_type) values ('Juniper','Coniferous');
insert into trees (tree_name, tree_type) values ('Larch','Coniferous');
insert into trees (tree_name, tree_type) values ('Lilac','Deciduous');
insert into trees (tree_name, tree_type) values ('Linden','Deciduous');
insert into trees (tree_name, tree_type) values ('Locust','Deciduous');
insert into trees (tree_name, tree_type) values ('Magnolia','Deciduous');
insert into trees (tree_name, tree_type) values ('Mango','Deciduous');
insert into trees (tree_name, tree_type) values ('Maple','Deciduous');
insert into trees (tree_name, tree_type) values ('Mulberry','Deciduous');
insert into trees (tree_name, tree_type) values ('Oak','Deciduous');
insert into trees (tree_name, tree_type) values ('Palm','Deciduous');
insert into trees (tree_name, tree_type) values ('Pear','Deciduous');
insert into trees (tree_name, tree_type) values ('Pine','Coniferous');
insert into trees (tree_name, tree_type) values ('Plum','Deciduous');
insert into trees (tree_name, tree_type) values ('Poplar','Deciduous');
insert into trees (tree_name, tree_type) values ('Redbud','Deciduous');
insert into trees (tree_name, tree_type) values ('Sassafras','Deciduous');
insert into trees (tree_name, tree_type) values ('Saw Palmetto','Deciduous');
insert into trees (tree_name, tree_type) values ('Sequoia','Coniferous');
insert into trees (tree_name, tree_type) values ('Spruce','Coniferous');
insert into trees (tree_name, tree_type) values ('Sumac','Deciduous');
insert into trees (tree_name, tree_type) values ('Sweet Gum','Deciduous');
insert into trees (tree_name, tree_type) values ('Sycamore','Deciduous');
insert into trees (tree_name, tree_type) values ('Tea','Deciduous');
insert into trees (tree_name, tree_type) values ('Tulip','Deciduous');
insert into trees (tree_name, tree_type) values ('Tupelo','Deciduous');
insert into trees (tree_name, tree_type) values ('Walnut','Deciduous');
insert into trees (tree_name, tree_type) values ('Willow','Deciduous');
insert into trees (tree_name, tree_type) values ('Yew','Coniferous');