module Hashing

  require 'bcrypt'

  def hash_string(password)
    BCrypt::Password.create(password)
  end

  def auth(password)
    if  self.password == password
      "auth completed"
    else
      "auth failed"
    end
  end
end