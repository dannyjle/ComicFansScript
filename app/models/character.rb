class Character < ApplicationRecord
    belongs_to :comic
    has_many :powers
    has_one_attached :main_picture # one-to-one relationship
    has_many_attached :uploads # one-to-many relationship
end
