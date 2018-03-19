json.extract! job, :id, :title, :priceperhour
json.url job_url(job, format: :json)
json.url_link job_url(job)

json.when do
	json.created_at job.created_at
	json.last_update job.updated_at
	json.time_ago job.time_ago_json
end

json.location do
	json.address [job.location_address , job.location_city, job.location_country, job.location_postcode]
	# :location_address, :location_city, :location_country, :location_postcode
	json.postcode job.location_postcode
end


json.stats do
	json.bids job.bids.count
end
