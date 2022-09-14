use brecho;

create trigger tgr_fterupdate_cp after update
on customer_purchases for each row
begin
	update inventory set number_in_stock = number_in_stock - total_de_items
    where inventory_id = new.inventory_id
end$$
delimiter ;

update customer_purchases set quantidade = 4 where customer_purchase_id = 3;