class Market < ApplicationRecord
  geocoded_by [:longitute, :latitude]
  after_validation :geocode
end
