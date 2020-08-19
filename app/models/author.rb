class Author < ApplicationRecord
    has_many :books
    has_many :reviews, through: :books

    accepts_nested_attributes_for :books
end
