-- Users
-----------------------------------------------
-- Add users
INSERT INTO users('name','email','country_id','password','verify_token','created_at','updated_at') values ('','','','','','','',);

-- List users (filter by name OR/AND email OR/AND verified OR/AND country)
SELECT *
from users
where 'name' = ''
  and 'email' = ''
  and 'email_verified_at'!=null
  and 'country_id'='';

-- Edit users
UPDATE users
set 'name'='', 'email'='', 'country_code'='',
where 'id'='';

-- Delete users
DELETE
from users
where 'id' in  ('','','');

--------------------------------------------------------------------------
-- Projects

-- Add new projects
INSERT INTO projects('name','user_id','created_at','updated_at') values ('','','','',);

--     Link projects to users
INSERT into project_user('project_id','user_id') values ('project_id','user_id')

-- List projects incl. labels (filter by user.email OR/AND user.continent OR/AND labels)

select *
from projects
         INNER JOIN users ON projects.user_id = users.id
         INNER JOIN countries on users.country_id = countries.id
         INNER JOIN continents c on countries.continent_id = c.id
         INNER JOIN label_project lp on projects.id = lp.project_id
where c.id = 4
  and lp.label_id in ('', '', '');

-- Delete projects
Delete
from projects
where 'id' in  ('','','');

------------------------------------------------------
-- Labels

-- Add labels
INSERT INTO projects('name','user_id','created_at','updated_at') values ('','','','',);

-- Link labels to projects
INSERT into label_project('project_id','label_id') values ('project_id','label_id')

-- List labels (filter by user.email OR/AND projects)
SELECT *
from labels
         INNER JOIN users on labels.user_id = users.id
         INNER JOIN label_project on labels.id = label_project.label_id
WHERE email = ''
  and project_id IN (*, *, *, );

--    Delete labels
DELETE
FROM labels
where 'id' in  ('','','');
