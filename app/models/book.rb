class Book < ApplicationRecord
    belongs_to :author
    has_many :reviews

    accepts_nested_attributes_for :reviews
end
