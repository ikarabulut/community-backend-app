class CausesController < ApplicationController
  def create
    cause = Cause.new(
      cause: params["cause"]
    )
    if cause.save
      render json: cause.as_json
    else
      render json: {errors: cause.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
