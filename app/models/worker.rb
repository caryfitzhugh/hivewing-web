class Worker < ActiveRecord::Base
  include HasGuid

  belongs_to :hive
  belongs_to :apiary
end
