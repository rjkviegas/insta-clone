require 'rails_helper'

RSpec.describe Account, type: :model do
  describe 'validation' do
    let(:account) { FactoryBot.build(:account) }
    it 'should have a username' do
      account.username = nil
      expect(account).to_not be_valid
    end
    # it 'username length <= 20 chars' do
    #   account.username = 'TwentyPlusCharacterUserName'
    #   expect(account).to_not be_valid
    # end
    # it 'should have a first name' do
    #   account.first_name = nil
    #   expect(account).to_not be_valid
    # end
    # it 'first name length <= 20 chars' do
    #   account.first_name = 'Terry'
    #   expect(account).to be_valid
    # end
    # it 'should have a last name' do
    #   account.last_name = nil
    #   expect(account).to_not be_valid
    # end
    # it 'should have an email' do
    #   account.email = nil
    #   expect(account).to_not be_valid
    # end
  end
end
