module CostsHelper
	
	def cost_total
		@costs.sum(:cost_amount)
	end
end
