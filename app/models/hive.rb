class Hive < ActiveRecord::Base
  has_many :workers
  belongs_to :apiary
  has_many :hive_beekeepers, :through => :hive_beekeepers, :class => Beekeeper
end
