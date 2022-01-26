
alter table larare add column kompetens int;

alter table larare drop column kompetens;

alter table larare add column kompetens int default 1 not null;

show columns from larare;