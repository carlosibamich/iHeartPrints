FactoryBot.define do
  sequence (:name) { |n| "product_name#{n}" }

  factory :product do
    name
    description { "Lorem ipsum dolor sit amet" }
    img_url { "generic_image.jpg" }
    price { 18.95 }
  end
end
