class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :record_not_saved_response

  def record_not_found_response
    render json: {
      status: :not_found,
      error: 'could not find from request model'
    }
  end

  def record_not_saved_response
    render json: { error: 'could not save' }, status: :unprocessable_entity
    logger.error exception.message
  end
end
