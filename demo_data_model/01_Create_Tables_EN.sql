--Definition of data types and database tables
create type id_text as table(
    id int, 
    text nvarchar(20)
);

create column table colors(
	color NVARCHAR(20)
);
create column table sizes(
	size VARCHAR(5)
);
CREATE COLUMN TABLE users(
	id INT PRIMARY KEY,
	firstname NVARCHAR(20),
	lastname NVARCHAR(20),
	email NVARCHAR(50), 
	sex VARCHAR(1),
	team int
);
create column table team_text(
    id int ,
    langu varchar(2),
    team_text nvarchar(20),
    primary key (id, langu)
);
create column table projects(
	id INT PRIMARY KEY,
	title NVARCHAR(40),
	project_manager INT,
	estimated_effort INT,
	start_date DATE,
	status int
);
create column table tasks(
	id INT PRIMARY KEY,
	project INT,
	title NVARCHAR(40),
	description CLOB, 
	status INT,
	assignee INT,
	planned_effort INT,
	effort INT,
	create_date DATE,
	due_date DATE,
	completed INT
);

create table status(id int primary key , is_final boolean, is_open boolean);

create column table status_Text(
	id INT,
	langu VARCHAR(2),
	status_text NVARCHAR(20),
	PRIMARY KEY (
		id,
		langu
	)
);
create column table tasks_log(
	task INT,
	timestamp TIMESTAMP,
	status INT,
	users INT,
	PRIMARY KEY (
		task,
		timestamp
	)
);
create column table dats_date(
	id INT PRIMARY KEY,
	calday VARCHAR(8)
);

create column table error_log(
    id int primary key GENERATED BY DEFAULT AS IDENTITY,
    timestamp timestamp,
    errorcode  int,
    message   Nvarchar(500)
);
