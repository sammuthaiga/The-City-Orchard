class FruitSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :availability

  belongs_to :farmer
  belongs_to :client
end
