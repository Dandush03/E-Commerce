# User Model
class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Model associations
  has_one :client, dependent: :destroy
  has_many :tokens, dependent: :destroy

  # Validations
  validates :username, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { maximum: 15, minimum: 6 }
end
