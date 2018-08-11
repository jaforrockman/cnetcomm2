class Bill < ApplicationRecord
	
	belongs_to :customer
	validates :customer_id, presence: true

	scope :paid_bills, -> { where(transaction_type: 'Paid') }
  	scope :due_bills, -> { where(transaction_type: 'Due') }

		def customer_name
			customer.try(:name)
		end

		def customer_name=(name)
			self.customer = Customer.find_by_name(name) if name.present?
		end
end
