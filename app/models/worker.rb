class Worker < ActiveRecord::Base
  include HasGuid
  include HasAccessToken

  belongs_to :hive
  belongs_to :apiary
end
