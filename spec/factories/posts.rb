FactoryBot.define do
  factory :post do
    image { 'spec/files/images/coffee.jpg' }
    caption { "nom nom nom #coffeetime" }
    active  { true }
  end
end
