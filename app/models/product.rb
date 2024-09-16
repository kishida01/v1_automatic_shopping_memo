class Product < ApplicationRecord
    validates :name, presence: true
    validates :category, presence: true
    validates :default_quantity, numericality: { greater_than_or_equal_to: 0 }
    validates :unit, presence: true
end
