class Store < ApplicationRecord
    has_many :items
    # items<<
    accepts_nested_attributes_for :items
end
