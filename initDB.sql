create schema if not exists public;

create database Task_3 with owner postgres;

comment on schema public is 'standard public schema';

alter schema public owner to postgres;

CREATE TABLE companies 
(
	companyId SERIAL NOT NULL,
	
	companyName VARCHAR,
	companyLocation VARCHAR
);

alter table companies owner to postgres;

CREATE TABLE developers 
(
	developerId SERIAL NOT NULL,
	firstName VARCHAR,
	gender VARCHAR,
	age INT,
	reportDay DATE,
	companyId INT
);

alter table developers owner to postgres;

CREATE TABLE customers
(
	customerId SERIAL NOT NULL,
	
	customerName VARCHAR(50),
	customerLocation VARCHAR
);

ALTER TABLE customers owner TO postgres;

CREATE TABLE projects
(
	projectId SERIAL NOT NULL,
	
	projectName VARCHAR(50),
	customerId INT,
	workersAmount INT
);

alter table projects owner to postgres;


CREATE TABLE skills
(
	skillId SERIAL NOT NULL,
	
	skillName VARCHAR(50),
	skillLavel VARCHAR(10)
);

alter table skills owner to postgres;


-- *************************************************************************

ALTER TABLE customers ADD PRIMARY KEY(customerId);
ALTER TABLE projects ADD PRIMARY KEY(projectId);
ALTER TABLE companies ADD PRIMARY KEY(companyId);
ALTER TABLE skills ADD PRIMARY KEY(skillId);
ALTER TABLE developers ADD PRIMARY KEY(developerId);

-- *************************************************************************

CREATE TABLE developers_projects
(
	dp_developer_id INT,
	dp_project_id INT
);

ALTER TABLE developers_projects owner TO postgres;

CREATE TABLE developers_skills
(
	ds_developer_id INT,
	ds_skill_id INT
);

ALTER TABLE developers_skills owner TO postgres;

CREATE TABLE companyes_projects
(
	cmppr_company_id INT,
	cmppr_project_id INT
);

ALTER TABLE companyes_projects owner TO postgres;

CREATE TABLE customers_projects
(
	cuspr_customer_id INT,
	cuspr_project_id INT
);

ALTER TABLE customers_projects owner TO postgres;


-- *************************************************************************

ALTER TABLE developers ADD CONSTRAINT dev_fk FOREIGN KEY (coppanyid)
											 REFERENCES companies(companyid);
											 
ALTER TABLE projects ADD CONSTRAINT proj_fk FOREIGN KEY (customerid)
											 REFERENCES customers(customerid);

-- *************************************************************************

ALTER TABLE developers_projects 
	ADD CONSTRAINT dp_dev_id 
	FOREIGN KEY (dp_developer_id)
	REFERENCES developers(developerid);
ALTER TABLE developers_projects 
	ADD CONSTRAINT dp_poj_id 
	FOREIGN KEY (dp_project_id)											 
	REFERENCES projects(projectid);

ALTER TABLE developers_skills 
	ADD CONSTRAINT ds_dev_id 
	FOREIGN KEY (ds_developer_id)
	REFERENCES developers(developerid);
ALTER TABLE developers_skills 
	ADD CONSTRAINT ds_skill_id
	FOREIGN KEY (ds_skill_id)											 
	REFERENCES skills(skillid);

ALTER TABLE companyes_projects
	ADD CONSTRAINT cp_com_id 
	FOREIGN KEY (cmppr_company_id)
	REFERENCES companies(companyid);
ALTER TABLE companyes_projects
	ADD CONSTRAINT cp_project_id
	FOREIGN KEY (cmppr_project_id)											 
	REFERENCES projects(projectid);

ALTER TABLE customers_projects
	ADD CONSTRAINT cusp_cus_id 
	FOREIGN KEY (cuspr_customer_id)
	REFERENCES customers(customerid);
ALTER TABLE customers_projects
	ADD CONSTRAINT cp_project_id
	FOREIGN KEY (cuspr_project_id)											 
	REFERENCES projects(projectid);
	
--*****************************************************************

