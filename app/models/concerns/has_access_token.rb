module HasAccessToken
  extend ActiveSupport::Concern

  included do
    before_create :generate_access_token
  end

  protected

  def generate_access_token
    self.access_token = SecureRandom.hex(32)
  end
end
