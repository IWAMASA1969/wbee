FactoryGirl.define do
  factory :sq_easy, class: Task do |rt|
    rt.task_name 'sq-easy'
  end

  factory :cti_avaya, class: Task do |rt|
    rt.task_name 'cti [avaya]'
  end
end
