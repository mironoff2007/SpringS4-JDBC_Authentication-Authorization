CREATE TABLE users (
"username" varchar Not NULL ,
"password" varchar Not NULL ,
"enabled" varchar Not NULL DEFAULT 1 ,
PRIMARY KEY ("username")
);



CREATE table user_roles (
"user_role_id" serial Not NULL ,
"username" varchar Not NULL,
role varchar(43) Not NULL,
PRIMARY KEY ("user_role_id"),
CONSTRAINT uni_username_role UNIQUE (role,username),

CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));



INSERT INTO users(username,password,enabled)
VALUES ('priya','priya', true);

INSERT INTO users(username,password,enabled)
VALUES  ('naveen','naveen', true);

INSERT INTO user_roles (username, role)
VALUES ('priya', 'ROLE_USER');

INSERT INTO user_roles (username, role)
VALUES  ('priya', 'ROLE_ADMIN');

INSERT INTO user_roles (username, role)
VALUES ('naveen', 'ROLE_USER');