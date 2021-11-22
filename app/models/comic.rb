class Comic < ApplicationRecord
    has_many :characters
    has_one_attached :main_picture # one-to-one relationship
end
