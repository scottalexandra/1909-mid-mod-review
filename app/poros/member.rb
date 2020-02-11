class Member
  attr_reader :name, :role, :patronus, :house

  def initialize(member_data)
    @name = member_data[:name]
    @role = set_role(member_data)
    @patronus = member_data[:patronus] || 'Not cool enough to have one'
    @house = member_data[:house]
  end

  private

  def set_role(member_data)
    member_data[:role] || 'none specified'
  end
end
