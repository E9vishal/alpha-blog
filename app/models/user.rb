class User 
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword

  has_many :articles, dependent: :destroy
   	
  VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3, maximum: 25 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, 
                                    length: {maximum: 105},
                                    format: { with: VALID_EMAIL_REGEX }
 
  field :username, type: String
  field :email, type: String
  field :password_digest, type: String
  has_secure_password

end
