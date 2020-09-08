class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :price, :string, :phone, :review_count, :url
end
