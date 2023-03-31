class FarmerSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :email, :phonenumber, :location

  has_many :fruits
  has_many :clients, through: :fruits
end
