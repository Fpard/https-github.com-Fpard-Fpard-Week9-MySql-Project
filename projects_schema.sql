DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS projects;


CREATE TABLE projects (
	
	project_id INT primary key NOT NULL AUTO_INCREMENT ,
	project_name varchar(128) NOT NULL,
	estimated_hours decimal(7,2),
	actual_hours decimal(7,2),
	difficulty INT,
	notes text	
);

CREATE TABLE category (
	category_id INT primary key  NOT null  AUTO_INCREMENT,
	category_name varchar(128) NOT NULL
);


CREATE TABLE step (
	step_id INT primary key NOT null  AUTO_INCREMENT,
	project_id INT NOT NULL,
	step_text text NOT NULL,
	step_order INT NOT NULL,
	FOREIGN KEY (project_id) REFERENCES projects(project_id) ON DELETE CASCADE
);


CREATE TABLE material (
	material_id INT primary key NOT NULL AUTO_INCREMENT,
	project_id INT NOT NULL,
	material_name varchar(128) NOT NULL,
	num_required INT,
	cost decimal (7,2),
	FOREIGN KEY (project_id) REFERENCES projects(project_id) ON DELETE CASCADE	
);

CREATE TABLE project_category (
	project_id INT NOT NULL,
	category_id INT NOT null
); 