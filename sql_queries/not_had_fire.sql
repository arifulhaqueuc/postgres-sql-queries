

-- find the parcels that have not had fire



select 
	parcel_name
	, parcel_id

from parcels


where parcel_id not in 
	(
		select 
			parcel_id
		from fires
	)

;	

-- more efficient way

select
	parcel_name
	, parcel_id

from parcels



where not exists 
	(
		select null
		from fires
		where parcels.parcel_id = fires.parcel_id


	)

;

	