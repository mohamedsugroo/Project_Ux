class Category
  include Mongoid::Document
  field :name, type: String
  field :updatedby, type: String
  field :updated_at, type: String

  has_many :jobs
  belongs_to :user
end
