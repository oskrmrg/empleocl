class Empresa < ApplicationRecord
    has_many :empleo
    has_secure_password
    
    validates :rut, presence: true, uniqueness: true
    validates :razon_social, presence: true, length: { in: 5..30 }

    validates :email, presence: true, uniqueness: true
end
