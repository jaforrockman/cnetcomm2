module BillsHelper
	def bill_total
		@bills.sum(:bill_amount)
	end

	
end
