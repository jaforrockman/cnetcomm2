module BillsHelper
	def paid_bill_total
		@bills.paid_bills.sum(:bill_amount)
	end

	def due_bill_total
		@bills.due_bills.sum(:bill_amount)
	end
end
