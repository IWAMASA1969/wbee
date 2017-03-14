require 'rails_helper'

describe 'Auhenticator' do
  it 'return true when password is right' do
    w = build(:wbee_user)
    expect(Authenticator.new(w).authenticate('pw')).to be_truthy
  end

  it 'return false when password is right' do
    w = build(:wbee_user)
    expect(Authenticator.new(w).authenticate('xyz')).to be_falsey
  end
end
