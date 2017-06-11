require 'rails_helper'

describe 'SecureLogWriter' do
  it 'raise ArgumentError when execute LogedinSuccessWriter to set authentication information nil' do
    expect{ SecureLog::LogedinSuccessWriter.new(nil).write_log() }.to raise_error(ArgumentError)
  end

  it 'raise ArgumentError when execute LogedinFalsyWriter to set authentication information nil' do
    expect{ SecureLog::LogedinFalsyWriter.new(nil).write_log() }.to raise_error(ArgumentError)
  end

  it 'return right information when execute LogedinSuccessWriter to use right information' do
    w = create(:bowhead)
    log = SecureLog::LogedinSuccessWriter.new(
      SecureLog::AutheticationInformation.new(w.id, 'masaxyz', 'masaxyz')
    ).write_log

    auth_info = AuthenticationLog.find_by(id: log.id)
    expect(auth_info.wbee_user_id).to eq(w.id)
    expect(auth_info.login_id).to eq(nil)
    expect(auth_info.raw_password).to eq(nil)
    expect(auth_info.login_logout_div).to eq(1)
    expect(auth_info.auth_result).to eq(true)
  end

  it 'return right information when execute LogedinFalsyWriter to use right information' do
    log = SecureLog::LogedinFalsyWriter.new(
      SecureLog::AutheticationInformation.new(nil, 'masaxyz', 'masaxyz')
    ).write_log

    auth_info = AuthenticationLog.find_by(id: log.id)
    expect(auth_info.wbee_user_id).to eq(nil)
    expect(auth_info.login_id).to eq('masaxyz')
    expect(auth_info.raw_password).to eq('masaxyz')
    expect(auth_info.login_logout_div).to eq(1)
    expect(auth_info.auth_result).to eq(false)
  end

  it 'return right information when execute LogedoutWriter to use right information' do
    w = create(:bowhead)
    log = SecureLog::LogedoutWriter.new(
      SecureLog::AutheticationInformation.new(w.id, 'masaxyz', 'masaxyz')
    ).write_log

    auth_info = AuthenticationLog.find_by(id: log.id)
    expect(auth_info.wbee_user_id).to eq(w.id)
    expect(auth_info.login_id).to eq(nil)
    expect(auth_info.raw_password).to eq(nil)
    expect(auth_info.login_logout_div).to eq(-1)
    expect(auth_info.auth_result).to eq(true)
  end
end
