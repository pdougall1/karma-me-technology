module Slack
  class Client

    def initialize
      puts 'dougs'
    end

    def connect
      conn = Faraday.new(:url => 'http://sushi.com') do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end

    def more changes
      puts "there were more #{changes}"
    end

  end
end
