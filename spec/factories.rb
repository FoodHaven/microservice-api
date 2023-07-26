# FactoryBot.define do 
#   factory :markets do 
#     name {Faker::}

#   end

#   factory :invoice_item do 
#     :invoice
#     :item
#     quantity {Faker::Number.within(range: 1..10)}
#     unit_price {Faker::Number.decimal(l_digits: 2)}
#   end

#   factory :invoice do
#     status {"completed"}
#     :merchant
#     :customer
#   end
  
#   factory :item do
#     name {Faker::Coffee.variety}
#     description {Faker::Quote.famous_last_words}
#     unit_price {Faker::Number.decimal(l_digits: 2)}
#     :merchant
#   end

#   factory :merchant do
#     name {Faker::FunnyName.two_word_name}
#   end

#   factory :transaction do
#     result { "successful"}
#     credit_card_number {Faker::Finance.credit_card}
#     credit_card_expiration_date {Faker::Business.credit_card_expiry_date}
#     :invoice
#   end
# end