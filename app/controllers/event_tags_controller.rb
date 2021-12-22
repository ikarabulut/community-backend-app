class EventTagsController < ApplicationController
  def create
    event = Event.find_by(id: params["event_id"])
    tag = Tag.find_by(tag: params["tag"])
    event_tag = EventTag.new(
      event_id: event.id,
      tag_id: tag.id
    )
    if event_tag.save
      render json: event_tag
    else
      render json: {errors: event_tag.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    event_tags = EventTag.where(event_id: params["event_id"])
    render json: event_tags
  end

end
