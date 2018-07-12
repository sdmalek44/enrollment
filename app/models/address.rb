class Address < ApplicationRecord
  validates_presence_of :description, :street, :city, :zip_code, :state
  belongs_to :student
end
