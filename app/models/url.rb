class Url < ActiveRecord::Base

  def generate_token
    self.token = SecureRandom.hex(4)
  end

end
