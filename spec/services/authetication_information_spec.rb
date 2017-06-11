require 'rails_helper'

describe 'AutheticationInformation' do
  it 'login_id and rawpassword is nil when wbee login user is exists' do
    info = SecureLog::AutheticationInformation.new(100, 'masaxyz', 'masaxyz')

    expect(info.wbee_user_id).not_to eq(nil)
    expect(info.login_id).to eq(nil)
    expect(info.raw_password).to eq(nil)
  end

  it 'login_id and rawpassword is not nil when wbee login user is nil' do
    info = SecureLog::AutheticationInformation.new(nil, 'masaxyz', 'masaxyz')

    expect(info.wbee_user_id).to eq(nil)
    expect(info.login_id).not_to eq(nil)
    expect(info.raw_password).not_to eq(nil)
  end

  it 'wbee_user_id is returned 100 when wbee login user is 100' do
    info = SecureLog::AutheticationInformation.new(100, 'masaxyz', 'masaxyz')

    expect(info.wbee_user_id).to eq(100)
  end

  it 'wbee_user_id is not returned 100 when wbee login user is 90' do
    info = SecureLog::AutheticationInformation.new(90, 'masaxyz', 'masaxyz')

    expect(info.wbee_user_id).not_to eq(100)
  end

  it 'login_id is returned masaxyz when login user is nil and login_id is masaxyz' do
    info = SecureLog::AutheticationInformation.new(nil, 'masaxyz', 'masaxyz')

    expect(info.login_id).to eq('masaxyz')
  end

  it 'login_id is not returned masaxyz when login user is nil and login_id is masa' do
    info = SecureLog::AutheticationInformation.new(nil, 'masa', 'masaxyz')

    expect(info.login_id).not_to eq('masaxyz')
  end

  it 'raw_password is returned masaxyz when login user is nil and raw_password is masaxyz' do
    info = SecureLog::AutheticationInformation.new(nil, 'masaxyz', 'masaxyz')

    expect(info.raw_password).to eq('masaxyz')
  end

  it 'raw_password is not returned masaxyz when login user is nil and raw_password is masa' do
    info = SecureLog::AutheticationInformation.new(nil, 'masaxyz', 'masa')

    expect(info.raw_password).not_to eq('masaxyz')
  end
end
