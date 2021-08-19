class Category < ApplicationRecord
    has_many :entries

    validates :categories, presence: true
end
