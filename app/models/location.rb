class Location < ActiveRecord::Base
  has_many :seasonalities

  def get_produce(m)
    season = seasonalities.find_by month: m
    produce = season.produces
    return produce
  end

  def add_produce(produce_list, m)
    season = seasonalities.find_by month: m
    season.produces << produce_list
  end

end
