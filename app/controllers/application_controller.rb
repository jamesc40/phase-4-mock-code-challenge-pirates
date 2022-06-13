class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordNotFound, with: :not_found_res
  rescue_from ActiveRecord::RecordInvalid, with: :not_valid_res

  
  private

  def find_pirate
    Pirate.find(params[:id])
  end

  def not_found_res(invalid)
    render json: { error: "#{invalid.model} not found" }, status: :not_found
  end

  def not_valid_res(invalid)
    render json: { errors: [invalid] }, status: :unprocessable_entity
  end

end
