FactoryGirl.define do
  factory :wbee_user_run_task, class: WbeeUserRunTask do |rt|
    rt.wbee_user_id 1
    rt.task_id 1
  end
end
