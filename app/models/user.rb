class User < ActiveRecord::Base
  validates :username, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 15 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+0[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true,
            uniqueness: { case_sensitive: false },
            length: { maximum: 105 },
            format: { with: VALID_EMAIL_REGEX }
end
