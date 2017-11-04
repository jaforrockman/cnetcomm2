class PagesController < ApplicationController
  def home
  end
def customer_list
     @customers = Customer.all.order(:customer_id) 
  end
def admin_panel
    
end

  def bill_list
  	@bills = Bill.all.order("created_at DESC")
    @bill_by_months = @bills.group_by{|bill| bill.created_at.strftime("%B %Y")}
  end

def cost_list
    @costs = Cost.all.order("created_at DESC")
    @cost_by_months = @costs.group_by{|cost| cost.date.strftime("%B %Y")}
  end

  def about
  end
end
