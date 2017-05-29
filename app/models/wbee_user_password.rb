class WbeeUserPassword < ApplicationRecord
  belongs_to :wbee_user

  def password=(raw_password)
    self.hashed_password =
      BCrypt::Password.create(raw_password)
  end
end
