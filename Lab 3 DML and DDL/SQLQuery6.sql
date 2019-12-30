alter table ClassVenue
Add Constraint FKC 
Foreign KEY (Teacher) References Teacher(Name)
ON DELETE Cascade ON UPDATE NO ACTION