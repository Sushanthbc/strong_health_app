module Api
  class AccountController < ApplicationController
    before_action :authorize

    def show; end

    def update
      account = Account.find_by(params[:id])
      if account.update(account_params)
        render json: { status: ok }
      else
        Rails.logger.error "Failed to update"
      end
    end

    def delete; end

    def account_params
      params.require(:account).permit(:display_name, :street, :area, :city,
                                      :country, :tin_number, :dl_number_one, :dl_number_two, :dl_number_three,
                                      :gst_number, :cst_number)
    end
  end
end
