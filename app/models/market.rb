class Market < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  # def lon_lat
  #   "#{self.longitude}, #{self.latitude}"
  # end
end