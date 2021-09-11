class Proveedor < ApplicationRecord
    validates :telefono, presence: true, uniqueness: true
    has_many :facturacs
end
