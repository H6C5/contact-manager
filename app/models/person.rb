class Person < ActiveRecord::Base
  #relationships
  has_many :phone_numbers
  has_many :email_addresses

  #validations
  validates :first_name, :last_name, presence: true


  #class/instance methods

end
