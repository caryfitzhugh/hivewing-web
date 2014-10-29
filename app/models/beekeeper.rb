class Beekeeper < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
          :confirmable, :lockable,
          :recoverable, :rememberable, :trackable, :validatable
  has_one :apiary
  has_many :hive_beekeepers, :class_name => "HiveBeekeepers"
  has_many :hives, :through => :hive_beekeepers

  def is_admin?
    self.role == 'admin'
  end
end
