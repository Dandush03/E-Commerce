require 'rails_helper'

RSpec.describe Client, type: :model do
  it {
    should belong_to(:user)
      .with_foreign_key('user_id')
  }

  it { should validate_presence_of(:first_name) }
  it { should validate_length_of(:first_name).is_at_least(3).is_at_most(50) }

  it { should validate_presence_of(:last_name) }
  it { should validate_length_of(:last_name).is_at_least(3).is_at_most(50) }

  it { should validate_presence_of(:phone) }
  it {
    should validate_length_of(:phone)
      .is_at_least(10)
      .is_at_most(15)
      .with_message('Invalid phone number')
  }

  it { should validate_presence_of(:billing_address) }
  it {
    should validate_length_of(:billing_address)
      .is_at_least(10)
      .with_message('Please enter full address')
  }

  it { should validate_presence_of(:billing_city) }
  it { should validate_presence_of(:billing_state) }
  it { should validate_presence_of(:billing_zip_code) }
  it {
    should validate_length_of(:billing_zip_code)
      .is_at_least(5)
      .is_at_most(7)
      .with_message('Invalid Zip Code')
  }
end
