# frozen_string_literal: true

class ClientsController < ApplicationController
  def index
    render json: { clients: Client.all }
  end

  def create
    @client = Client.create(client_params)
    render json: {new_client: @client}
  end

  def login
    return render json: {response: 'Login done'} if Client.find_by client_params

    render json: {response: 'Error, wrong login or password'}
  end

  private def client_params
    params.permit(:email, :password, :address)
  end
end
