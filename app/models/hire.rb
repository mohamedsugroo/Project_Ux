class Hire
  include Mongoid::Document
  field :company_id, type: String
  field :person_id, type: String
  field :job_id, type: String
  field :start_date, type: String
  field :end_date, type: String
  field :created_at, type: String



  belongs_to :company
  belongs_to :person
  belongs_to :job

  before_create :create_time

  def create_time
  	self.created_at = Time.now
  end

end
