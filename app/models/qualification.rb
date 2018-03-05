class Qualification
  include Mongoid::Document
  field :awarded_date, type: String
  field :expiration_date, type: String

  belongs_to :user
  belongs_to :qtype

end
