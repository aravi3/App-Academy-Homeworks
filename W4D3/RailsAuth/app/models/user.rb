class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: { message: "Password can't be blank"}
    validates :session_token, presence: true, uniqueness: true
    validates :password, length: { minimum: 6, allow_nil: true }
    before_validation :ensure_session_token

    attr_reader :password

    def self.find_by_credentials(username, pwd)
      user = self.find_by(username: username)
      return user if user && BCrypt::Password.new(user.password_digest).is_password?(pwd)
      nil
    end

    def self.generate_session_token
      SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
      self.session_token = self.class.generate_session_token
      self.save!
      self.session_token
    end

    def ensure_session_token
      self.session_token ||= self.class.generate_session_token
    end

    def password=(pwd)
      @password = pwd
      self.password_digest = BCrypt::Password.create(pwd)
      self.save!
    end
end
