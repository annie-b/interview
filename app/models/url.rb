class Url < ActiveRecord::Base

  def generate_token
    self.token = SecureRandom.uuid
  end

end
