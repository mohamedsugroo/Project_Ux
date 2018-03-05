json.extract! person, :id, :first_name, :middle_name, :last_name, :first_line_address, :second_line_address, :post_code, :utr, :mobile_number, :home_number, :car_owner, :user_id, :photo_id
json.url person_url(person, format: :json)
