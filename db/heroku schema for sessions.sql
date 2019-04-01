USE `mp1wuwmz3yjsrqmz`;

CREATE TABLE Sessions
(
    sid varchar
(255),
    userId varchar (255),
    expires datetime,
    data text,
    createdAt datetime,
    updatedAt datetime,
    primary key
    (sid)
);
