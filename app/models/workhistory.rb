class Workhistory
  include Mongoid::Document
  field :role, type: String
  field :company_name, type: String
  field :start_date, type: String
  field :end_date, type: String
  field :summary, type: String

 belongs_to :user
end
