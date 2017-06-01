class Place < ApplicationRecord

belongs_to :user

validates :name, :description, :address, presence: true
validates :name, length: { minimum: 2 }
geocoded_by :address
after_validation :geocode


end
