class AuthenticationLog < ApplicationRecord
  belongs_to :wbee_user, optional: true
end
