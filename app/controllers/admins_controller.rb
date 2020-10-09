# frozen_string_literal: true

class AdminsController < ApplicationController
  def index
    render json: { clients: Admin.all }
  end

  def login
    admin = Admin.find_by(admin_params)
    if admin
      render json: { admin: admin, status: :ok }, status: :ok
    else
      render json: { message: 'Error. Are you trying to fool me ? You are not an admin !' }, status: :unauthorized
    end
  end

  private def admin_params
    params.permit(:nick_name, :first_name, :last_name, :password)
  end
end
