class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


rails_admin do
      create do 
      	field :name 
      	field :email
      	field :password
      	field :password_confirmation
      	field :kind
      	
      	end

      	edit do 
      	field :name 
      	field :email
      	field :password
      	field :password_confirmation
      	field :kind
      	
      	end

      	show do 
      	field :name 
      	field :email
      	field :password
      	field :password_confirmation
      	field :kind
      	
      	end
    end

end
