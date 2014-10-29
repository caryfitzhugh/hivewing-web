class Hive < ActiveRecord::Base
  has_many :workers
  belongs_to :apiary
  has_many :hive_beekeepers, :class_name => "HiveBeekeepers"
  has_many :beekeepers, :through => :hive_beekeepers
end
