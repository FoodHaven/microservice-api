class Market < ApplicationRecord
  reverse_geocoded_by :longitude, :latitude
  after_validation :reverse_geocode
end
