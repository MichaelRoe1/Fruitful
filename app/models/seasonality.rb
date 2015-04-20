class Seasonality < ActiveRecord::Base
  belongs_to :january
  belongs_to :february
  belongs_to :march
  belongs_to :april
  belongs_to :may
  belongs_to :june
  belongs_to :july
  belongs_to :august
  belongs_to :september
  belongs_to :october
  belongs_to :november
  belongs_to :december
  has_and_belongs_to_many :produces
end
