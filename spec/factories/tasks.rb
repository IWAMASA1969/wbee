FactoryGirl.define do
  factory :sq_easy, class: Task do |rt|
    rt.task_name 'sq-easy'
  end

  factory :cti_avaya, class: Task do |rt|
    rt.task_name 'cti [avaya]'
  end

  factory :cti_exadata, class: Task do |rt|
    rt.task_name 'cti [exadata]'
  end

  factory :cti_jpi, class: Task do |rt|
    rt.task_name 'cti [JPI]'
  end

  factory :pmo, class: Task do |rt|
    rt.task_name 'PMO'
  end
end
