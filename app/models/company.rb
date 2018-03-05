class Company
  include Mongoid::Document
  field :name, type: String
  field :number, type: String
  field :first_line, type: String
  field :city, type: String
  field :country, type: String
  field :postcode, type: String
  field :phone_number, type: String
  field :Work_number, type: String
  field :created_at, type: String
  field :updated_at, type: String

  before_create :create_time
  before_update :updated_time


  def create_time
  	self.created_at = Time.now
  end

  def updated_time
  	self.updated_at = Time.now
  end


  belongs_to :user

end
