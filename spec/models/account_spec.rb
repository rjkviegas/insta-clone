# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Account, type: :model do
  describe 'validation' do
    let(:account) { FactoryBot.build(:account) }
    it 'should have a username' do
      account.username = nil
      expect(account).to_not be_valid
    end
    it 'username length <= 20 chars' do
      account.username = 'TwentyPlusCharacterUserName'
      expect(account).to_not be_valid
    end
    it 'should have a first name' do
      account.first_name = nil
      expect(account).to_not be_valid
    end
    it 'first name length <= 20 chars' do
      account.first_name = 'TwentyPlusCharacterFirstName'
      expect(account).to_not be_valid
    end
    it 'should have a last name' do
      account.last_name = nil
      expect(account).to_not be_valid
    end
    it 'last name length <= 20 chars' do
      account.last_name = 'TwentyPlusCharacterLastName'
      expect(account).to_not be_valid
    end
    it 'should have an email' do
      account.email = nil
      expect(account).to_not be_valid
    end
    it 'email has to include atleast 1 @' do
      account.email = 'noatsignemailaddress.com'
      expect(account).to_not be_valid
    end
  end
end
