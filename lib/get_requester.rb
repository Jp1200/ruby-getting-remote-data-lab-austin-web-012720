require 'net/http'
require 'open-uri'
require 'json'
class GetRequester
  attr_accessor :url_string

  def initialize(url_string)
    @url_string = url_string
  end
  def get_response_body
    uri = URI.parse(self.url_string)
    response = Net::HTTP.get_response(uri)
    return response.body

  end
  def parse_json
    body = self.get_response_body
    body_parse = JSON.parse(body)

  end

end
