class HiveBeekeepers < ActiveRecord::Base
  belongs_to :hive
  belongs_to :beekeeper
end
