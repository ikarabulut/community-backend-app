class GroupCausesController < ApplicationController
  def create
    group_cause = GroupCause.new(
      group_id: params["group_id"],
      cause_id: params["cause_id"]
    )
    if group_cause.save
      render json: group_cause.as_json
    else
      render json: {errors: group_cause.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
