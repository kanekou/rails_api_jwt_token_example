class Users::RegistrationsController < Devise::RegistrationsController
  # respond_to :json
  # POST /resource
  def create
    build_resource(sign_up_params)

    if resource.save
      render json: resource, status: :ok
    else
      render json: { message: 'Sign up Faild' }, status: 400
    end

  end
end
