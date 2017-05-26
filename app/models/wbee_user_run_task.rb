class WbeeUserRunTask < ApplicationRecord
  belongs_to :wbee_user
  belongs_to :task
end
