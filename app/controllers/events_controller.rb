class EventsController < ApplicationController
  def create
    event = Event.new(
      group_id: params["group_id"],
      name: params["name"],
      date: params["date"],
      start_time: params["start_time"],
      duration: params["duration"],
      address: params["address"],
      volunteers_needed: params["volunteers_needed"],
      description: params["description"]
    )
    if event.save
      render json: event.as_json
    else
      render json: {errors: event.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    event = Event.find_by(id: params["id"])
    event.name = params["name"] || event.name
    event.date = params["date"] || event.date
    event.start_time = params["start_time"] || event.start_time
    event.duration = params["duration"] || event.duration
    event.address = params["address"] || event.address
    event.volunteers_needed = params["volunteers_needed"] || event.volunteers_needed
    event.description = params["description"] || event.description
    if event.save
      render json: {message: "Event successfully updated", params: event.as_json}
    else
      render json: {errors: event.errors.full_messages}, status: 418
    end
  end

  def index
    events = Event.all
    render json: events.as_json
  end

  def show
    event = Event.find_by(id: params["id"])
    render json: event.as_json
  end

  def destroy
    event = Event.find_by(id: params["id"])
    event.delete
    render json: {message: "Event successfully deleted"}
  end

end
