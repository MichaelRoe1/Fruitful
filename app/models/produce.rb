class Produce < ActiveRecord::Base
  has_and_belongs_to_many :seasonalities

  def get(thing)
  	return find_by name: thing
end
