class WbeeUser < ApplicationRecord
  has_many :wbee_user_passwords
  has_many :wbee_user_run_tasks
  has_many :tasks, through: :wbee_user_run_tasks
end
