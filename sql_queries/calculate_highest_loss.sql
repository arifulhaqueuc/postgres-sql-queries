
-- find the parcel with the highest estimated loss from fire


select
	parcel_name
	, parcel_id


from
	fires

where 
	(
		select 
			max(loss) as highest_loss
		from fires
	)