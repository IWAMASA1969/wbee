class Task < ApplicationRecord
  has_many :wbee_user_run_tasks
  has_many :wbee_users, through: :wbee_user_run_tasks
end
