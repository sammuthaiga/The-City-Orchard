class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :email, :phonenumber, :password_digest
end
