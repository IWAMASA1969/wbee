require 'rails_helper'

describe 'Auhenticator' do
  it 'return true when password is right' do
    w = build(:bowhead)
    expect(Authenticator.new(w).authenticate('masaxyz')).to be_truthy
  end

  it 'return false when password is wrong' do
    w = build(:bowhead)
    expect(Authenticator.new(w).authenticate('xyz')).to be_falsey
  end

  it 'return false when password is not exists' do
    w = build(:sebi)
    expect(Authenticator.new(w).authenticate('masaxyz')).to be_falsey
  end

  it 'return false when password expire_date is until today' do
    w = build(:pygmysebi)
    expect(Authenticator.new(w).authenticate('masaxyz')).to be_falsey
  end

  it 'return false when password start_date is yet' do
    w = build(:aosagi)
    expect(Authenticator.new(w).authenticate('masaxyz')).to be_falsey
  end

  it 'return false when password is many' do
    w = build(:rorqual)
    expect(Authenticator.new(w).authenticate('masaxyz')).to be_falsey
  end
end
