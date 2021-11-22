class Power < ApplicationRecord
    belongs_to :character
    has_one_attached :main_picture # one-to-one relationship
end
