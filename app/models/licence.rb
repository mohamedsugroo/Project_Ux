class Licence
  include Mongoid::Document
  field :number, type: String
  field :expiration_date, type: String

  belongs_to :user
  belongs_to :ltype
end
