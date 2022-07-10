class Usuario < ApplicationRecord
    has_secure_password
    has_many :empleos

    validates :rut, presence: true, uniqueness: true
    validates :nombre, presence: true, length: { in: 5..20 },
            format: {
                with: /\A[a-z-0-9-A-Z]+\z/,
                message: :invalid
            }

    validates :email, presence: true, uniqueness: true
    # validates :password, length: { minimum: 6 }

end
