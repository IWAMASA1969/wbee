require 'rails_helper'

describe :WbeeUser do
  it 'email_lcase is lower case when input email' do
    w = build(:bowhead, email: 'MasaXyz_Labo@Example.COM')
    expect(w.email_lcase).to match(/^([a-z0-9])+([a-z0-9\.-_])*@([a-z0-9\.-_])+([a-z])$/)
  end
end
