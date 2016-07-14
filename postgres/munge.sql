--split up user@domain into two seperate fields
/*
ALTER TABLE proc
RENAME usr TO comp;

ALTER TABLE proc
RENAME userdomain TO compdomain;

UPDATE redteam
set usr = split_part(userdomain, '@', 1)
set domain = split_part(userdomain, '@', 2);
*/

UPDATE proc
set comp = split_part(compdomain, '$@', 1),
domain = split_part(compdomain, '$@', 2);

UPDATE auth
set srcusr = split_part(srcuserdomain, '@', 1),
srcdomain = split_part(srcuserdomain, '@', 2),
dstusr = split_part(dstuserdomain, '@', 1),
dstdomain = split_part(dstuserdomain, '@', 2);