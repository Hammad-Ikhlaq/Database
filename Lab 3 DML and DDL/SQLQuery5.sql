alter table Attendence
Add Constraint FKS 
Foreign KEY (ClassVenue) References ClassVenue(ID)
ON DELETE Cascade ON UPDATE NO ACTION