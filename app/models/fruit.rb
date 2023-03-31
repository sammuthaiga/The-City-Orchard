class Fruit < ApplicationRecord
    belongs_to :farmer
    belongs_to :client

    validates :name, presence: true
    validates :image, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 100, less_than_or_equal_to: 5000 }
    validates :availability, numericality: { greater_than_or_equal_to: 100 }
end
