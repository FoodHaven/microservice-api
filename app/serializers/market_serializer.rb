class MarketSerializer
  include JSONAPI::Serializer
  attributes :name, :address, :site, :description, :fnap, :snap_option, :accepted_payment, :longitute, :latitude

  def self.format_markets(markets)
    {
      data: markets.map do |market|
        {
          id: market.id,
          attributes: {
            name: market.name,
            address: market.address,
            site: market.site,
            description: market.description,
            fnap: market.fnap,
            snap_option: market.snap_option,
            accepted_payment: market.accepted_payment,
            longitude: market.longitude,
            latitude: market.longitude
          }
        }
      end
    }
  end
end