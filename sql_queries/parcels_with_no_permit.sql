

-- find the parcels that have not obtained a permit


select *


from parcels

where (parcel_id, permit) not in (
		select 
			parcel_id, 
			permit
		from permits
	)

;

