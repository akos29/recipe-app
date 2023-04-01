require 'rails_helper'
RSpec.describe 'Inventories', type: :request do
  describe 'GET #index' do
    context 'when user is not logged in' do
      it 'redirects to login page' do
        get '/inventories'
        expect(response).to redirect_to(new_user_session_path)
      end
      it 'sets the alert message' do
        get '/inventories'
        expect(flash[:alert]).to be_present
      end
    end
  end
end
