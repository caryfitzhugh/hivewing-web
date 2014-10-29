module HasGuid
  extend ActiveSupport::Concern

  included do
    before_create :generate_guid
  end

  protected

  def generate_guid
    self.guid = SecureRandom.uuid if self.guid.empty?
  end
end
