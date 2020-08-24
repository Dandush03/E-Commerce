require 'rails_helper'

RSpec.describe Token, type: :model do
  it {
    should belong_to(:user)
      .with_foreign_key('user_id')
      .order('created_at desc')
  }
  it { should validate_presence_of(:token) }
  it { should validate_uniqueness_of(:token).ignoring_case_sensitivity }
  it { should validate_presence_of(:request_ip) }
end
