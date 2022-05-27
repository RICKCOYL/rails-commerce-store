class Product < ApplicationRecord
    before_destroy :ensure_not_referenced_by_any_line_item
    belongs_to :user, optional: true
    has_one_attached :file
    has_many :line_items
    
    validates :title, :brand, :price, :model, presence: true
    validates :description, length: {  maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
    validates :title, length: {  maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
    validates :price, length: { maximum: 6 }

    # puts Productrails cable

    BRANDS = %w{ Apple Samsung LG Sony }
    CONDITION = %w{ New Used }

    private
    def ensure_not_referenced_by_any_line_item
       unless line_items.empty?
            errors.add(:base, 'Line Items present')
            throw :abort
        end
    end
end
