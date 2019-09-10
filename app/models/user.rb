class User < ApplicationRecord
    has_secure_password
    
    has_many :destinations
    has_many :books, through: :destinations

end
