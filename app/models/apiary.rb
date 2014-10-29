class Apiary < ActiveRecord::Base
  belongs_to :beekeeper
  has_one :apiary, :class => Apiary
  has_many :workers
end
