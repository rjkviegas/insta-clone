require 'rails_helper'

RSpec.describe Post, type: :model do
    it 'needs an account_id' do
      post = FactoryBot.build(:post)
      post.account_id = nil
      expect(post).to_not be_valid
    end
  describe 'validation' do
    let(:post) { FactoryBot.build(:post) }
    it 'needs an image' do
      post.image = nil
      expect(post).to_not be_valid
    end
  end
end
