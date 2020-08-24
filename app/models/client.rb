class Client < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  validates :first_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :phone, presence: true, length: {
    minimum: 10, maximum: 15, too_long: 'Invalid phone number', too_short: 'Invalid phone number'
  }
  validates :billing_address, presence: true, length: { minimum: 10, too_short: 'Please enter full address' }
  validates :billing_city, presence: true
  validates :billing_state, presence: true
  validates :billing_zip_code, presence: true, length: {
    minimum: 5, maximum: 7, too_long: 'Invalid Zip Code', too_short: 'Invalid Zip Code'
  }
end
