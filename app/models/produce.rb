class Produce < ActiveRecord::Base
	has_and_belongs_to_many :seasonalities
end
