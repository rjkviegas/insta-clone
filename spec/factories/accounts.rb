FactoryBot.define do
  factory :account do
      username { 'Test Johnson' }
      first_name { "Johnson" }
      last_name  { "Doe" }
      email { 'testjohnson@testmail.com' }
      password { '123456' }
  end
end
