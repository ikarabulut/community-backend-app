class EventTagsController < ApplicationController
  def create
    event_tag = EventTag.new(
      event_id: params["event_id"],
      tag_id: params["tag_id"]
    )
    if event_tag.save
      render json: event_tag
    else
      render json: {errors: event_tag.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
