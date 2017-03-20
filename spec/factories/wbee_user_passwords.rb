FactoryGirl.define do
  factory :bowhead_pw, class: WbeeUserPassword do |wp|
    wp.hashed_password 'masaxyz'
    wp.start_date { Date.yesterday }
  end

  factory :pygmysebi_pw, class: WbeeUserPassword do |wp|
    wp.hashed_password 'masaxyz'
    wp.start_date { Date.yesterday }
    wp.expiry_date { Date.today }
  end

  factory :aosagi_pw, class: WbeeUserPassword do |wp|
    wp.hashed_password 'masaxyz'
    wp.start_date { Date.tomorrow }
  end

  factory :rorqual_pw, class: WbeeUserPassword do |wp|
    wp.hashed_password 'masaxyz'
    wp.start_date { Date.yesterday }
  end
end
