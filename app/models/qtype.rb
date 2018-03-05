class Qtype
  include Mongoid::Document
  field :name, type: String

  belongs_to :user
  has_many :qualifications
end
