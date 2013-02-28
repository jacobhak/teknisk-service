class Drifvare < ActiveRecord::Base
  attr_accessible :address, :admin, :city, :country, :email, :name, :postal_code, :telephone, 
    :password, :password_confirmation

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length:  { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :address, :city, :postal_code, :telephone, presence: true

  has_secure_password
  has_and_belongs_to_many :drifveri

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
