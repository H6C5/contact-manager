class EmailAddress < ActiveRecord::Base

  belongs_to :person

  validates :address, :person_id, presence: true
  validates :person_id, numericality: { only_integer: true }
end
