class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #meet_options associations
  has_and_belongs_to_many :meet_options

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,:confirmable,:omniauthable,:omniauth_providers => [:facebook]
  has_many :events
  has_many :posts, as: :postable
  has_and_belongs_to_many :oauth_credentials
  has_many :notifications, as: :recipient

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      # user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
	def self.current_user=(user)
		@current_user = user
	end

	def self.current_user
		@current_user
	end


end
