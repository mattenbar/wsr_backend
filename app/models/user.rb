class User < ApplicationRecord
    has_secure_password
    
    validates :first_name, :last_name, presence: true
    
    validates :email, uniqueness: true, presence: true
    validates :password_digest, presence: true

end
