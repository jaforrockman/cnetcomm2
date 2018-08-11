class Connection < ApplicationRecord
	has_many :customers, dependent: :destroy
end
