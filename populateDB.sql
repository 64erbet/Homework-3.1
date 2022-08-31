INSERT INTO public.companies (companyid, companyname, companylocation) VALUES (1, 'Adidas', 'Ukraine, Kyiv');
INSERT INTO public.companies (companyid, companyname, companylocation) VALUES (2, 'Nike', 'Ukraine, Kharkiv');
INSERT INTO public.companies (companyid, companyname, companylocation) VALUES (3, 'Puma', 'Ukraine, Dnipro');
INSERT INTO public.companies (companyid, companyname, companylocation) VALUES (4, 'Everlast', 'USA, New York');
INSERT INTO public.companies (companyid, companyname, companylocation) VALUES (5, 'Reyvel', 'Ukraine, Ivano-Frankivsk');

INSERT INTO public.developers (developerid, firstname, gender, age, reportday, companyid) VALUES (1, 'Alex', 'Male', 35, to_date('2022-Dec-25', 'YYYY-Mon-DD'), 5);
INSERT INTO public.developers (developerid, firstname, gender, age, reportday, companyid) VALUES (2, 'Serhiy', 'Male', 33, to_date('2021-Feb-25', 'YYYY-Mon-DD'), 4);
INSERT INTO public.developers (developerid, firstname, gender, age, reportday, companyid) VALUES (3, 'Andriy', 'Male', 90, to_date('2022-Jan-25', 'YYYY-Mon-DD'), 3);
INSERT INTO public.developers (developerid, firstname, gender, age, reportday, companyid) VALUES (4, 'Rostislav', 'Male', 65, to_date('2022-Mar-25', 'YYYY-Mon-DD'), 2);
INSERT INTO public.developers (developerid, firstname, gender, age, reportday, companyid) VALUES (5, 'Olena', 'Female', 10, to_date('2002-Dec-01', 'YYYY-Mon-DD'), 1);

INSERT INTO public.customers (customerid, customername, customerlocation) VALUES (1, 'Alfred', 'Germany, Hamburg');
INSERT INTO public.customers (customerid, customername, customerlocation) VALUES (2, 'School_#15', 'Germany, Hamburg');
INSERT INTO public.customers (customerid, customername, customerlocation) VALUES (3, 'Oksford', 'England');
INSERT INTO public.customers (customerid, customername, customerlocation) VALUES (4, 'Cambridge', 'England');
INSERT INTO public.customers (customerid, customername, customerlocation) VALUES (5, 'KPI', 'Ukraine, Kyiv');

INSERT INTO public.projects (projectid, projectname, customerid, workersamount) VALUES (1, 'Project_1', 5, 10000);
INSERT INTO public.projects (projectid, projectname, customerid, workersamount) VALUES (2, 'Project_2', 4, 100);
INSERT INTO public.projects (projectid, projectname, customerid, workersamount) VALUES (3, 'Project_3', 3, 10);
INSERT INTO public.projects (projectid, projectname, customerid, workersamount) VALUES (4, 'Project_4', 2, 30);
INSERT INTO public.projects (projectid, projectname, customerid, workersamount) VALUES (5, 'Project_5', 1, 50);

INSERT INTO public.skills (skillid, skillname, skilllavel) VALUES (1, 'JavaScript', 'Junior');
INSERT INTO public.skills (skillid, skillname, skilllavel) VALUES (2, 'Pyton', 'Middle');
INSERT INTO public.skills (skillid, skillname, skilllavel) VALUES (3, 'Java', 'Senior');
INSERT INTO public.skills (skillid, skillname, skilllavel) VALUES (4, 'html', 'Middle');
INSERT INTO public.skills (skillid, skillname, skilllavel) VALUES (5, 'Fortran', 'Senior');

--**************************************************************************************

INSERT INTO public.developers_projects (dp_developer_id, dp_project_id) VALUES (1, 2);
INSERT INTO public.developers_projects (dp_developer_id, dp_project_id) VALUES (1, 3);
INSERT INTO public.developers_projects (dp_developer_id, dp_project_id) VALUES (1, 5);
INSERT INTO public.developers_projects (dp_developer_id, dp_project_id) VALUES (3, 1);
INSERT INTO public.developers_projects (dp_developer_id, dp_project_id) VALUES (4, 2);
INSERT INTO public.developers_projects (dp_developer_id, dp_project_id) VALUES (5, 1);

INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (1, 1);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (1, 2);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (1, 3);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (1, 4);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (2, 2);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (2, 4);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (3, 1);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (4, 4);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (4, 5);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (5, 1);
INSERT INTO public.developers_skills (ds_developer_id, ds_skill_id) VALUES (5, 2);

INSERT INTO public.companyes_projects (cmppr_company_id, cmppr_project_id) VALUES (1, 2);
INSERT INTO public.companyes_projects (cmppr_company_id, cmppr_project_id) VALUES (1, 4);
INSERT INTO public.companyes_projects (cmppr_company_id, cmppr_project_id) VALUES (1, 5);
INSERT INTO public.companyes_projects (cmppr_company_id, cmppr_project_id) VALUES (2, 1);
INSERT INTO public.companyes_projects (cmppr_company_id, cmppr_project_id) VALUES (3, 2);
INSERT INTO public.companyes_projects (cmppr_company_id, cmppr_project_id) VALUES (4, 5);
INSERT INTO public.companyes_projects (cmppr_company_id, cmppr_project_id) VALUES (5, 5);

INSERT INTO public.customers_projects (cuspr_customer_id, cuspr_project_id) VALUES (1, 2);
INSERT INTO public.customers_projects (cuspr_customer_id, cuspr_project_id) VALUES (1, 3);
INSERT INTO public.customers_projects (cuspr_customer_id, cuspr_project_id) VALUES (1, 5);
INSERT INTO public.customers_projects (cuspr_customer_id, cuspr_project_id) VALUES (2, 1);
INSERT INTO public.customers_projects (cuspr_customer_id, cuspr_project_id) VALUES (3, 4);