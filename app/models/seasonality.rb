class Seasonality < ActiveRecord::Base
  belongs_to :locations
  has_and_belongs_to_many :produces
end
