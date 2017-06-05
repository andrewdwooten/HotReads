class Api::V1::ReadsController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    read = Read.new(read_params)
    if read.save
    render json: read
    else
      render json: {status: 300}
    end
  end

private

  def read_params
    params.require(:read).permit(:url)
  end
end
