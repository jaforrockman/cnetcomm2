class Customer < ApplicationRecord
	has_many :bills, dependent: :destroy
	
end
