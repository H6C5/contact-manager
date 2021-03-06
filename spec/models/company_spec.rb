require 'rails_helper'

RSpec.describe Company, :type => :model do
  let(:company) do
    Company.new(name: 'Wayne Enterprises')
  end

  it 'is valid' do
    expect(company).to be_valid
  end

  it 'is invalid without a name' do
    company.name = nil
    expect(company).not_to be_valid
  end

  it 'has an array of phone numbers' do
    expect(company.phone_numbers).to eq([])
  end

  it 'responds with its phone numbers after they area created' do
    phone_number = company.phone_numbers.build(number: '333-4444')
    expect(phone_number.number).to eq('333-4444')
  end

  it 'has an array of email addresses' do
    email_address = company.email_addresses.build(address: '333@yomom.com')
    expect(email_address.address).to eq('333@yomom.com')
  end

end
