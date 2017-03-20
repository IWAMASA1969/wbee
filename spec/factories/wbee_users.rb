FactoryGirl.define do
  factory :bowhead, class: WbeeUser do |wu|
    wu.login_id 'masaxyz'
    wu.email 'masaxyz_labo@example.com'
    wu.email_lcase 'masaxyz_labo@example.com'
    wu.given_name 'gin'
    wu.family_name 'iwamasa'
    wu.wbee_user_passwords {[
      FactoryGirl.build(:bowhead_pw)
    ]}
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
