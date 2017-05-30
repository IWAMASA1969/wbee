class WbeeUser < ApplicationRecord
  has_many :wbee_user_passwords
  has_many :wbee_user_run_tasks
  has_many :tasks, through: :wbee_user_run_tasks

  before_validation do
    self.email_lcase = email.downcase if email
  end
end
