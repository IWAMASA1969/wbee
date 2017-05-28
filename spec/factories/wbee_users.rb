FactoryGirl.define do
  factory :bowhead, class: WbeeUser do |wu|
    wu.login_id 'masaxyz'
    wu.email 'masaxyz_labo@example.com'
    wu.email_lcase 'masaxyz_labo@example.com'
    wu.given_name 'gin'
    wu.family_name 'iwamasa'
    wu.wbee_user_passwords {[
      build(:bowhead_pw)
    ]}
  end

  factory :bowhead_and_run_tasks, class: WbeeUser do |wu|
    wu.login_id 'masaxyz'
    wu.email 'masaxyz_labo@example.com'
    wu.email_lcase 'masaxyz_labo@example.com'
    wu.given_name 'gin'
    wu.family_name 'iwamasa'
    wu.wbee_user_passwords {[
      build(:bowhead_pw)
    ]}

    after(:create) do |bowhead|
      create(:sq_easy, wbee_users: [bowhead])
      create(:cti_avaya, wbee_users: [bowhead])
    end
  end

  factory :bowhead_for_seeds, class: WbeeUser do |wu|
    wu.login_id 'masaxyz'
    wu.email 'masaxyz_labo@example.com'
    wu.email_lcase 'masaxyz_labo@example.com'
    wu.given_name 'gin'
    wu.family_name 'iwamasa'
    wu.wbee_user_passwords {[
      build(:bowhead_pw)
    ]}

    after(:create) do |bowhead|
      create(:sq_easy, wbee_users: [bowhead])
      create(:cti_avaya, wbee_users: [bowhead])
      create(:cti_exadata, wbee_users: [bowhead])
      create(:cti_jpi, wbee_users: [bowhead])
      create(:pmo, wbee_users: [bowhead])
    end
  end

  factory :sebi, class: WbeeUser do |wu|
    wu.login_id 'masaxyz'
    wu.email 'masaxyz_labo@example.com'
    wu.email_lcase 'masaxyz_labo@example.com'
    wu.given_name 'gin'
    wu.family_name 'iwamasa'
    wu.wbee_user_passwords {[]}
  end

  factory :pygmysebi, class: WbeeUser do |wu|
    wu.login_id 'masaxyz'
    wu.email 'masaxyz_labo@example.com'
    wu.email_lcase 'masaxyz_labo@example.com'
    wu.given_name 'gin'
    wu.family_name 'iwamasa'
    wu.wbee_user_passwords {[
      FactoryGirl.build(:pygmysebi_pw)
    ]}
  end

  factory :aosagi, class: WbeeUser do |wu|
    wu.login_id 'masaxyz'
    wu.email 'masaxyz_labo@example.com'
    wu.email_lcase 'masaxyz_labo@example.com'
    wu.given_name 'gin'
    wu.family_name 'iwamasa'
    wu.wbee_user_passwords {[
      FactoryGirl.build(:aosagi_pw)
    ]}
  end

  factory :rorqual, class: WbeeUser do |wu|
    wu.login_id 'masaxyz'
    wu.email 'masaxyz_labo@example.com'
    wu.email_lcase 'masaxyz_labo@example.com'
    wu.given_name 'gin'
    wu.family_name 'iwamasa'
    wu.wbee_user_passwords {[
      FactoryGirl.build(:rorqual_pw),
      FactoryGirl.build(:bowhead_pw),
    ]}
  end
end
