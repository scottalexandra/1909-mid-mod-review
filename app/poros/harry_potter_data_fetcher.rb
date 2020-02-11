class HarryPotterDataFetcher
  def get_order_members_by_house(house)
    response = Faraday.get("https://www.potterapi.com/v1/characters") do |req|
      req.params['key'] = ENV['harry_potter_api_key']
      req.params['orderOfThePhoenix'] = true
      req.params['house'] = house
    end
    parse_data(response)
  end

  def parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
