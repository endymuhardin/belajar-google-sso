CREATE TABLE s_permission (
  id               VARCHAR(255) NOT NULL,
  permission_label VARCHAR(255) NOT NULL,
  permission_value VARCHAR(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE (permission_value)
);

CREATE TABLE s_role (
  id          VARCHAR(255) NOT NULL,
  description VARCHAR(255) DEFAULT NULL,
  name        VARCHAR(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE (name)
);

CREATE TABLE s_role_permission (
  id_role       VARCHAR(255) NOT NULL,
  id_permission VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_role, id_permission),
  FOREIGN KEY (id_permission) REFERENCES s_permission (id),
  FOREIGN KEY (id_role) REFERENCES s_role (id)
);

create table s_user (
  id varchar (36),
  username varchar (100) not null,
  id_role varchar (36) not null,
  primary key (id),
  foreign key (id_role) references s_role(id),
  unique (username)
);

create table s_user_password (
	id_user varchar(36) not null,
	password varchar(255) not null,
	primary key (id_user),
	foreign key (id_user) references s_user (id)
);