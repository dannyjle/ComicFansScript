class Comic < ApplicationRecord
    has_many :characters
    has_many :powers
end
