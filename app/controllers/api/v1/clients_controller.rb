module Api
  module V1
    class ClientsController < ApplicationController
      before_action :clients_only, only: %i[create]

      def create
        client = current_user.build_client(clients_params)
        if client.valid?
          response = { message: 'Client Created Successfuly!' }
          return render json: response, status: :created
        end
        response = { message: client.errors.full_messages }
        render json: response, status: :unprocessable_entity
      end

      protected

      def clients_only
        if current_user.privilage != 'client'
          response = { message: 'Your user cannot be a client' }
          render json: response, status: :unprocessable_entity
        end
      end

      def clients_params
        params.permit(
          :first_name,
          :last_name,
          :phone,
          :billing_address,
          :billing_city,
          :billing_state,
          :billing_zip_code
        )
      end
    end
  end
end
