class Search
  include Mongoid::Document
  include Mongoid::Slug

  field :name, type: String
  field :created_at, type: String
  slug  :name

  before_create :created_time

  def created_time
  	self.created_at = Time.now
  end
end
