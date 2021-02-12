class AvatarService
  class << self
    def call_api(path)
      response = connection.get(path)
      parse(response)
    end

    private

    def connection
      Faraday.new('https://last-airbender-api.herokuapp.com')
    end 

    def parse(data)
      JSON.parse(data.body, symbolize_names: true)
    end
  end
end