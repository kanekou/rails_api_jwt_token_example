class Users::SessionsController < Devise::SessionsController
  respond_to :json

  # def create
  #   super { @token = current_token }
  # end

  private

  # ここでレスポンス整形
  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end

  # def current_token
  #   request.env['warden-jwt_auth.token']
  # end
end
