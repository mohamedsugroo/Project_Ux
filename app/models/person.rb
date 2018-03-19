class Person
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Slug

  field :first_name, type: String
  field :middle_name, type: String
  field :last_name, type: String
  field :first_line_address, type: String
  field :second_line_address, type: String
  field :post_code, type: String
  field :utr, type: String
  field :mobile_number, type: String
  field :bio, type: String
  field :home_number, type: String
  field :hourly_rate, type: String
  field :car_owner, type: Mongoid::Boolean
  slug :sluggable

  has_mongoid_attached_file :photo_id,
  :styles => {
      :small    => ['100x100#',   :jpg],
      :medium   => ['250x250#',    :jpg],
      :large    => ['500x500#',   :jpg]
    }
  validates_attachment_content_type :photo_id, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :user

  def sluggable
    "#{first_name}#{last_name}#{id}"
  end
end
