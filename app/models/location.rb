class Location < ActiveRecord::Base
  has_many :seasonalities

  def january_produce
  	arr = seasonalities.where(month :january)
  	arr.map(produces)
  end

   def february_produce
  	arr = seasonalities.where(month :february)
  	arr.map(produces)
  end

   def march_produce
  	arr = seasonalities.where(month :march)
  	arr.map(produces)
  end

   def april_produce
  	arr = seasonalities.where(month :april)
  	arr.map(produces)
  end

   def may_produce
  	arr = seasonalities.where(month :may)
  	arr.map(produces)
  end

   def june_produce
  	arr = seasonalities.where(month :june)
  	arr.map(produces)
  end

   def july_produce
  	arr = seasonalities.where(month :july)
  	arr.map(produces)
  end

   def august_produce
  	arr = seasonalities.where(month :august)
  	arr.map(produces)
  end

   def september_produce
  	arr = seasonalities.where(month :september)
  	arr.map(produces)
  end

   def october_produce
  	arr = seasonalities.where(month :october)
  	arr.map(produces)
  end

  def november_produce
  	arr = seasonalities.where(month :november)
  	arr.map(produces)
  end

   def december_produce
  	arr = seasonalities.where(month :december)
  	arr.map(produces)
  end
end
