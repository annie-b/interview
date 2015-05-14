class Url < ActiveRecord::Base

before_create :generate_token

  def generate_token
    self.token = "http://bit.ly/" + SecureRandom.hex(4)
  end

end
