class Location < ActiveRecord::Base
  has_many :seasonalities

  def january_produce
  	season = seasonalities.find_by month: "january"
  	produce = season.produces
    return produce
  end

  def february_produce
    season = seasonalities.find_by month: "february"
    produce = season.produces
    return produce
  end

  def march_produce
    season = seasonalities.find_by month: "march"
    produce = season.produces 
    return produce
  end

  def april_produce
    season = seasonalities.find_by month: "april"
    produce = season.produces
    return produce
  end

  def may_produce
    season = seasonalities.find_by month: "may"
    produce = season.produces 
    return produce
  end

  def june_produce
  	season = seasonalities.find_by month: "june"
    produce = season.produces
    return produce
  end

  def july_produce
  	season = seasonalities.find_by month: "july"
    produce = season.produces
    return produce
  end

  def august_produce
  	aseason = seasonalities.find_by month: "august"
    produce = season.produces
    return produce
  end

  def september_produce
  	season = seasonalities.find_by month: "september"
    produce = season.produces
    return produce
  end

  def october_produce
  	season = seasonalities.find_by month: "october"
    produce = season.produces
    return produce
  end

  def november_produce
  	season = seasonalities.find_by month: "november"
    produce = season.produces
    return produce
  end

   def december_produce
  	season = seasonalities.find_by month: "december"
    produce = season.produces
    return produce
  end
end
