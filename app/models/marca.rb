class Marca < ApplicationRecord
    validates :nombre, presence: true, uniqueness: true
end
