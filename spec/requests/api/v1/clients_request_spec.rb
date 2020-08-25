require 'rails_helper'

RSpec.describe 'Api::V1::Clients', type: :request do
  let!(:user) { create(:user) }
  let(:headers) { valid_headers }
  let(:invalid_headers) { valid_headers.except('Authorization') }
  let(:invalid_headers) { valid_headers.except('Authorization') }

  describe 'POST #create' do
    context 'with valid credentials' do
      let(:client) { build(:client) }
      before do
        post '/api/v1/clients', params: client.to_json, headers: headers
      end

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end
    end

    context 'with invalid header credentials' do
      before do
        post '/api/v1/clients', params: {}, headers: invalid_headers
      end

      it 'returns http invalid credential Msg' do
        expect(json['message']).to match(/Missing token/)
      end

      it 'returns http invalid credential Msg' do
        expect(response).to have_http_status(422)
      end
    end

    context 'with invalid user type' do
      let(:user) { create(:user, privilage: 'admin') }
      let(:client) { build(:client) }
      before do
        post '/api/v1/clients', params: client.to_json, headers: headers
      end

      it 'returns http invalid user Msg' do
        expect(json['message']).to match(/Your user cannot be a client/)
      end

      it 'returns http invalid credential Msg' do
        expect(response).to have_http_status(422)
      end
    end
  end
end
