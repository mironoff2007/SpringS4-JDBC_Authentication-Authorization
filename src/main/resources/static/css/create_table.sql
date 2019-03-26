CREATE TABLE users (
"username" varchar Not NULL ,
"password" varchar Not NULL ,
"enabled" varchar Not NULL DEFAULT 1 ,
"userid" serial Not null,
PRIMARY KEY ("userid")
);



CREATE table user_roles (
"user_role_id" serial Not NULL ,
"userid" varchar(43) Not NULL,
role varchar(43) Not NULL,
PRIMARY KEY ("user_role_id"),
UNIQUE KEV uni_username_role (role,username),
KEV fk_username_dx (username),
CONSTRAINT fk_username FOREIGN KEY (userid) REFERENCES users (userid));



INSERT INTO users(username,password,enahled)
VALUES ('priya','priya', true);

INSERT INTO users(username,password,enahled)
VALUES  ('naveen','naveen', true);

INSERT INTO user_roles (username, role)
VALUES ('priya', 'ROLE_USER');

INSERT INTO user_roles (username, role)
VALUES  ('priya', 'ROLE_ADMIN');

INSERT INTO user_roles (username, role)
VALUES ('naveen', 'ROLE_USER');