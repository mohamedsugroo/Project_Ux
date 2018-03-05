class Ltype
  include Mongoid::Document
  field :name, type: String

  has_many :licences
  
end
