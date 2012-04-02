require "json"
require "net/http"

require "geoip_client/version"

module GeoIPClient
  @host = "http://localhost:9292"

  def self.host=(host)
    @host = host
  end

  def self.look_up(ip)
    json = JSON.parse(Net::HTTP.get(URI.parse("#{@host}/json/#{ip}")))
    json.inject({}) do |hash, (key, value)|
      hash[key.to_sym] = value
      hash
    end
  end
end
