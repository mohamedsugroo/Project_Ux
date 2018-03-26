json.extract! person, :id, :first_name, :middle_name, :last_name,:post_code, :utr, :mobile_number, :home_number, :car_owner, :user_id, :photo_id, :approval
json.url person_url(person, format: :json)
