require 'rails_helper'

RSpec.describe "Publics", type: :request do
  describe 'root' do
    it "has welcome content" do
      get '/'
      expect(response).to render_template(:index)
      expect(response.body).to include('Welcome to InstaClone!')
    end
  end
end
