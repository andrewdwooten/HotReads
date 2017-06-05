class Api::V1::ReadsController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    Read.create(read_params)
    render json: { status: 200}
  end

private

  def read_params
    params.require(:read).permit(:url)
  end
end
