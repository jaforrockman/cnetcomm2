class PagesController < ApplicationController
  def home
  end
def customer_list
     @customers = Customer.all.order(:customer_id) 
  end
def admin_panel
    
end

  def active_customers
    @search = Customer.ransack(params[:q])
    @customers = @search.result
    @search.build_condition
  end
  
  def inactive_customers
    @search = Customer.ransack(params[:q])
    @customers = @search.result
    @search.build_condition
  end

  def bill_list
  	@bills = Bill.all.order("created_at DESC")
    @bill_by_months = @bills.group_by{|bill| bill.created_at.strftime("%B %Y")}
     
  end

def cost_list
    @costs = Cost.all.order("created_at DESC")
    @cost_by_months = @costs.group_by{|cost| cost.created_at.strftime("%B %Y")}
  end

   def overview

    @bills = Bill.all.order("created_at DESC")
    @bill_by_months = @bills.group_by{|bill| bill.created_at.strftime("%B %Y")}


     @costs = Cost.all.order("created_at DESC")
    @cost_by_months = @costs.group_by{|cost| cost.created_at.strftime("%B %Y")}

    end

  def about
  end
end
