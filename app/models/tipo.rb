class Tipo < ApplicationRecord
    validates :codigo, presence: true, uniqueness: true
end
