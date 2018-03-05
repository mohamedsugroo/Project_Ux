json.extract! job, :id, :title, :stripped_naked, :description, :category, :fixedPrice, :priceperhour, :experienceLevel, :user, :bids, :created_at, :updated_at, :timeago, :time_ago_json, :number_of_hours, :location_address, :location_city, :location_country, :location_postcode
json.url job_url(job, format: :json)
json.url_link job_url(job)

