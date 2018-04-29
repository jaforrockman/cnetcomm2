class Customer < ApplicationRecord
	has_many :bills, dependent: :destroy
  has_many :connection, dependent: :destroy
  
  scope :active_customers, -> { where(status: 'Active') }
  scope :inactive_customers, -> { where(status: 'Inactive') }

	 rails_admin do
      create do 
      	field :name 
      	field :customer_id
      	field :mac_address
      	field :ip_address
      	field :connection_type
      	field :status

      	field :billing_code, :enum do
      		enum do
      			[['First quarter'], ['Secoend quarter']]
      		end
      	end

      	field :address
      	field :contact_no
      	field :contact_person
      	field :email

        field :status , :enum do
          enum do
            [['Active'],['Inactive']]
          end
        end 

      end
    end
	
end
