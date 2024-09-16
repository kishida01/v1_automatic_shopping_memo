class ShoppingListItem < ApplicationRecord
    validates :quantity, numericality: { greater_than_or_equal_to: 0 }
    validates :checked, inclusion: { in: [ 0, 1, 2 ] }
end
