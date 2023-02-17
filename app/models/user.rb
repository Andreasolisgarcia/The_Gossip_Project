class User < ApplicationRecord
    belongs_to :city
    has_many :gossips
    has_secure_password
    before_save { self.email = email.downcase }
    validates :name, presence: true
end
