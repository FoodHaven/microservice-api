class Market < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  def self.accepts_benefits
    where('fnap IS NOT NULL OR snap_option IS NOT NULL')
  end

  def self.snap_available
    where('snap_option IS NOT NULL')
  end

  def self.fnap_available
    where('fnap IS NOT NULL')
  end

  def self.closest_markets(coordinates, radius)
    require 'pry'; binding.pry
  end
end
