class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [ :create ]

  def create
    Rails.logger.debug "Params: #{params.inspect}"
    user = User.new(user_params)

    if user.save
      token = JsonWebToken.encode(user_id: user.id)
      render json: { user: user, token: token }
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def me
    render json: @current_user
  end

  private

  def user_params
    params.permit(:username, :password, :password_confirmation, :bio)
  end
end
