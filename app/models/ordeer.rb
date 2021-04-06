class Ordeer < ApplicationRecord
    has_many :ordeer_items
    before_save :set_subtotal

    def subtotal
        ordeer_items.collect{|ordeer_item| ordeer_item.valid? ? ordeer_item.unit_price*ordeer_item.quantity : 0}.sum
    end

    private

    def set_subtotal
        self[:subtotal] = subtotal
    end
end
