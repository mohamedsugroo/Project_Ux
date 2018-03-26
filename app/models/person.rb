class Person
  include Mongoid::Document
  include Mongoid::Paperclip
  field :first_name, type: String
  field :middle_name, type: String
  field :last_name, type: String
  field :first_line_address, type: String
  field :city, type: String
  field :country, type: String
  field :post_code, type: String
  field :utr, type: String
  field :mobile_number, type: String
  field :bio, type: String
  field :home_number, type: String
  field :hourly_rate, type: String
  field :car_owner, type: Mongoid::Boolean
  field :approval, type: Mongoid::Boolean
  

  has_mongoid_attached_file :photo_id,
  :styles => {
      :small    => ['100x100#',   :jpg],
      :medium   => ['250x250#',    :jpg],
      :large    => ['500x500#',   :jpg]
    }
  validates_attachment_content_type :photo_id, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :user
  has_many :hire
  has_many :constatuses

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end


  def address
    "#{first_line_address}#{second_line_address}#{post_code}"
  end

  def basic_local
    "#{city} , #{country}"
  end

  def avatar_medium
    self.photo_id(:medium)
  end

end
