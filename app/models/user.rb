class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable 


  has_many :courses
  has_many :lectures
  has_many :comments

  mount_uploader :image, ImageUploader
  acts_as_voter

  validates_processing_of :image
  validate :image_size_validation

  validates :name, :presence =>true
  validates :status, :presence =>true
  validates :gender, :presence =>true
  validates :date_of_birth, :presence =>true
  validate :validate_age

  private
  def image_size_validation
    errors[:image] << "Should be less than 2MB" if image.size > 2.megabytes
  end

  def validate_age
      # if date_of_birth.present? && date_of_birth < 16.years.ago
      #     errors.add(:date_of_birth, 'You should be over 16 years old.')
      # end
    #   if date_of_birth.present? && date_of_birth < 16.years.from_now
    #   errors.add(:date_of_birth, "should be over 16 years old ")
    # end
  end
end
