class Produce < ActiveRecord::Base
  has_and_belongs_to_many :seasonalities

  def self.get(thing)
  	find_by name: thing
  end
end
