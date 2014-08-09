class Person < ActiveRecord::Base
  #relationships
  has_many :phone_numbers,  as: :contact
  has_many :email_addresses

  #validations
  validates :first_name, :last_name, presence: true


  #class/instance methods

end
