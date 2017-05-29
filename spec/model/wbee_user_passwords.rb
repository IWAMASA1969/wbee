require 'rails_helper'

describe :WbeeUserPassword do
  it 'hashed_password length is 60' do
    w = build(:bowhead)
    expect(w.wbee_user_passwords[0].size).to eq 60
  end
end
