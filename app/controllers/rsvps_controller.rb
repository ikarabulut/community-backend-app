class RsvpsController < ApplicationController
  def index
    rsvps = current_user.rsvps
    render json: rsvps
  end

  def create
    rsvp = Rsvp.new(
      user_id: current_user.id,
      event_id: params["event_id"],
      rsvp_type: params["rsvp_type"]
    )
    if rsvp.save
      render json: rsvp
    else
      render json: {errors: rsvp.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    rsvp = Rsvp.find_by(id: params["id"])
    render json: rsvp
  end

  def update
    rsvp = Rsvp.find_by(id: params["id"])
    rsvp.rsvp_type = params["rsvp_type"] || rsvp.rsvp_type
    if rsvp.save
      render json: {message: "Group successfully updated", params: rsvp}
    else
      render json: {errors: rsvp.errors.full_messages}, status: 418
    end
  end
end
