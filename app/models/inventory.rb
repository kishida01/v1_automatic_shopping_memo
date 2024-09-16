class Inventory < ApplicationRecord
    validates :estimated_consumption_rate, numericality: { greater_than_or_equal_to: 0 }
    validates :family_size, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
