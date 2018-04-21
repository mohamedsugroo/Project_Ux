class Job
  include Mongoid::Document
  include Mongoid::Search
  include Mongoid::Slug
  include ActionView::Helpers::DateHelper

  field :title, type: String
  field :description, type: String
  field :category_id, type: String
  field :fixedPrice, type: Mongoid::Boolean
  field :priceperhour, type: String
  field :experienceLevel, type: String
  field :user_id, type: String
  field :created_at, type: String
  field :updated_at, type: String
  field :number_of_hours, type: String
  field :location_address, type: String
  field :location_city, type: String
  field :location_country, type: String
  field :location_postcode, type: String
  slug :title





  belongs_to :category
  belongs_to :user
  has_many :bids

  before_create :created_time
  before_update :updated_time


  def created_time
    self.created_at = Time.now
  end

  def updated_time
    self.updated_at = Time.now
  end

  def stripped_naked
    self.description.gsub(/<\/?[^>]*>/, "")
  end

  def timeago
    DateTime.parse(self.updated_at).to_i
  end

  def time_ago_json
    time_ago_in_words(self.timeago)
  end

  def searchable
    "#{title} , £#{priceperhour} , #{location_city} , #{location_country}, #{location_postcode}"
  end

  def price
    (self.priceperhour.to_f * self.number_of_hours.to_f).to_f
  end

end
