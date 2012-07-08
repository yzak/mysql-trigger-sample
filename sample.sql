-- -----------------------------------------------------------------------
-- trg_for_i_on_tablex - tablex trigger case insert
-- -----------------------------------------------------------------------
-- show triggers;
-- drop trigger trg_for_i_on_tablex;
delimiter //
create trigger trg_for_i_on_tablex after insert on tablex for each row
begin

	insert into tabley(mode,tablename,newkey,oldkey) values 
		('insert','tablex',new.pk,NULL);

end
//
delimiter ;

-- -----------------------------------------------------------------------
-- trg_for_u_on_tablex - tablex trigger case update
-- -----------------------------------------------------------------------
-- show triggers;
-- drop trigger trg_for_u_on_tablex;
delimiter //
create trigger trg_for_u_on_tablex after update on tablex for each row
begin

	insert into tabley(mode,tablename,newkey,oldkey) values 
		('update','tablex',new.pk,old.pk);

end
//
delimiter ;

-- -----------------------------------------------------------------------
-- trg_for_d_on_tablex - tablex trigger case delete
-- -----------------------------------------------------------------------
-- show triggers;
-- drop trigger trg_for_d_on_tablex;
delimiter //
create trigger trg_for_d_on_tablex after delete on tablex for each row
begin

	insert into tabley(mode,tablename,newkey,oldkey) values 
		('update','tablex',NULL,old.pk);

end
//
delimiter ;

