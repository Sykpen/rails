# frozen_string_literal: true

class AdminsController < ApplicationController
  def index
    render json: { clients: Admin.all }
  end

  def login
    return render json: { response: 'Admin here, watchout', admin_data: admin_params } if Admin.find_by admin_params

    render json: { error: 'Error. Are you trying to fool me ? You are not an admin !' }
  end

  private def admin_params
    params.permit(:nick_name, :first_name, :last_name, :password)
  end
end
