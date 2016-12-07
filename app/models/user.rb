# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  password_digest :string           not null
#  session_token   :string           not null
#  email           :string           not null
#  first_name      :string
#  last_name       :string
#  phone           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  validates :email, :password_digest, :session_token, presence: true
	validates :email, uniqueness: true
	validates :password, length: {minimum: 6}, allow_nil: :true

	after_initialize :ensure_session_token
	before_validation :ensure_session_token_uniqueness

  has_many :restaurants,
    foreign_key: :owner_id,
    primary_key: :id,
    class_name: "Restaurant"
  has_many :reservations,
    foreign_key: :guest_id,
    primary_key: :id,
    class_name: "Reservation"
  has_many :reserved,
    through: :reservations,
    source: :restaurant
  has_many :reviews
  has_many :reviewed,
    through: :reviews,
    source: :restaurant
  has_many :favorites
  has_many :favorite_restaurants,
		through: :favorites,
		source: :restaurant

  attr_reader :password

  def password= password
		self.password_digest = BCrypt::Password.create(password)
		@password = password
	end

	def self.find_by_credentials(email, password)
		user = User.find_by(email: email)
		return nil unless user
    return user if BCrypt::Password.new(user.password_digest).is_password?(password)
	  nil
	end

	def reset_session_token
		self.session_token = new_session_token
		ensure_session_token_uniqueness
		self.save
		self.session_token
	end

	private

	def ensure_session_token
		self.session_token ||= new_session_token
	end

	def new_session_token
		SecureRandom.urlsafe_base64(16)
	end

	def ensure_session_token_uniqueness
		while User.find_by(session_token: self.session_token)
			self.session_token = new_session_token
		end
	end
end
