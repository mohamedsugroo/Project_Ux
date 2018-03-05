json.extract! workhistory, :id, :role, :company_name, :start_date, :end_date, :summary, :user
json.url workhistory_url(workhistory, format: :json)
