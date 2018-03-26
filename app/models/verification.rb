class Verification
  include Mongoid::Document
  field :name, type: String

  has_many :constatuses
end
