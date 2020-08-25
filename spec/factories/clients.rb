FactoryBot.define do
  factory :client do
    first_name { 'test' }
    last_name { 'test' }
    phone { '12312312312' }
    billing_address { 'test test test tes' }
    billing_city { 'test' }
    billing_state { 'test' }
    billing_zip_code { '12345' }
    user_id { '12345' }
  end
end
