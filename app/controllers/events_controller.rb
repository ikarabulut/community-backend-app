class EventsController < ApplicationController
  def create
    group_id = Group.find_by(id: params["group_id"])
    event = Event.new(
      group_id: group_id.id,
      name: params["name"],
      date: params["date"],
      start_time: params["start_time"],
      duration: params["duration"],
      address: params["address"],
      volunteers_needed: params["volunteers_needed"],
      description: params["description"]
    )
    if event.save
      render json: event
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
      render json: {message: "Event successfully updated", params: event}
    else
      render json: {errors: event.errors.full_messages}, status: 418
    end
  end

  def index
    events = Event.all
    render json: events
  end

  def group_events_index
    group = Group.find_by(id: params["group_id"])
    groups_events = Event.where(group_id: group.id)
    render json: groups_events
  end
  
  def show
    event = Event.find_by(id: params["id"])
    render json: event
  end

  def destroy
    event = Event.find_by(id: params["id"])
    event.delete
    render json: {message: "Event successfully deleted"}
  end

end
