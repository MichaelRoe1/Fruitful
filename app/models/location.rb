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



  def add_january_produce(procuce_list)
    season = seasonalities.find_by month: "january"
    season.produces << produce_list
  end

  def add_february_produce(produce_list)
    season = seasonalities.find_by month: "february"
    season.produces << produce_list
  end

  def add_march_produce(produce_list)
    season = seasonalities.find_by month: "march"
    season.produces << produce_list
  end


  def add_april_produce(produce_list)
    season = seasonalities.find_by month: "april"
    season.produces << produce_list
  end


  def add_may_produce(produce_list)
    season = seasonalities.find_by month: "may"
    season.produces << produce_list
  end


  def add_june_produce(produce_list)
    season = seasonalities.find_by month: "june"
    season.produces << produce_list
  end

  def add_july_produce(produce_list)
    season = seasonalities.find_by month: "july"
    season.produces << produce_list
  end


  def add_august_produce(produce_list)
    season = seasonalities.find_by month: "august"
    season.produces << produce_list
  end


  def add_september_produce(produce_list)
    season = seasonalities.find_by month: "september"
    season.produces << produce_list
  end


  def add_october_produce(produce_list)
    season = seasonalities.find_by month: "october"
    season.produces << produce_list
  end


  def add_november_produce(produce_list)
    season = seasonalities.find_by month: "november"
    season.produces << produce_list
  end


   def add_december_produce(produce_list)
    season = seasonalities.find_by month: "december"
    season.produces << produce_list
  end

end
