json.extract! company, :id, :name, :number, :first_line, :city, :country, :postcode, :phone_number, :Work_number, :created_at, :updated_at, :user
json.url company_url(company, format: :json)
