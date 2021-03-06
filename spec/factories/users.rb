FactoryGirl.define do
  factory :user do
    sequence(:firstname) { |n| "firstname#{n}" }
    sequence(:lastname) { |n| "lastname#{n}" }
    sequence(:username) { |n| "username#{n}" }
    sequence(:password) { |n| "password#{n}" }
    sequence(:email) { |n| "email#{n}@evercam.io" }
    sequence(:api_id) {|n| SecureRandom.hex(10)}
    sequence(:api_key) {|n| SecureRandom.hex(16)}
    is_admin false
  end
end
