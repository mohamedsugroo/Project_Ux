class Constatus
  include Mongoid::Document
  field :note, type: String
  field :person_id, type: String
  field :verification_id, type: String
  field :created_at, type: String
  field :updated_at, type: String

  belongs_to :person
  belongs_to :verification
end
