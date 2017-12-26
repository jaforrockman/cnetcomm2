module CustomersHelper
	def bill_total
		Customer.find(params[:id]).bills.sum(:bill_amount)
	end

end
