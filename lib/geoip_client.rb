require "json"
require "net/http"

require "geoip_client/version"

module GeoIPClient
  @host = "http://localhost:9292"

  def self.host=(host)
    @host = host
  end

  def self.look_up(ip)
    raw = Net::HTTP.get(URI.parse("#{@host}/json/#{ip}"))
    if raw == 'null'
      json = {
        country_code: "LO",
        country_code3: "LOC",
        country_name: "Localhost Country",
        region: "Localhost Region",
        city: "Localhost City",
        latitude: 0,
        longitude: 0,
        dma_code: 0,
        area_code: 0
      }
    else
      json = JSON.parse(raw)
    end
    json.inject({}) do |hash, (key, value)|
      hash[key.to_sym] = value
      hash
    end
  end
end
