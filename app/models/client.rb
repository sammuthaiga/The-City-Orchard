class Client < ApplicationRecord
    has_many :fruits
    has_many :farmers, through: :fruits

    validates :name, presence: true
    validates :image, presence: true
    validates :email, presence: true, uniqueness: true
    validates :phonenumber, presence: true, uniqueness: true
    # validates :location, inclusion: { in: %w[Nairobi Mombasa Nakuru Naivasha Nyeri Murang'a Machakos Kiambu Kajiado Lamu] }
end