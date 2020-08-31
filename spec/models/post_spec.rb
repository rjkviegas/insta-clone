require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validation' do
    let(:post) { FactoryBot.build(:post) }
    it 'needs an account_id' do
      post.account_id = nil
      expect(post).to_not be_valid
    end
  end
end
