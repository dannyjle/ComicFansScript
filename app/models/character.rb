class Character < ApplicationRecord
    belongs_to :comic
    has_many :powers
end
