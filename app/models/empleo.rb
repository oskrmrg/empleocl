class Empleo < ApplicationRecord
    
    validates :titulo, presence: true
end
