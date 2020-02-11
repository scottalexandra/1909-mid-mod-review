class SearchResults
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def member_count
    list_of_members.count
  end

  def list_of_members
    house_members = get_data
    create_members(house_members)
  end

  private

  def get_data
    @data ||= HarryPotterDataFetcher.new.get_order_members_by_house(house)
  end

  def create_members(data)
    data.map do |member|
      Member.new(member)
    end
  end
end
