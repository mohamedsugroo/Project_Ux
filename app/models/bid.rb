class Bid
  include Mongoid::Document
  field :hourly_rate, type: String
  field :number_of_hours, type: String
  field :note, type: String

  belongs_to :user
  belongs_to :job
end
