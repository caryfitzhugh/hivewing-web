class Apiary < ActiveRecord::Base
  belongs_to :beekeeper
  has_one :apiary
  has_many :hives, :through => :hive_beekeepers
end
