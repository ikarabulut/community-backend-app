class TagsController < ApplicationController
  def create
    tag = Tag.new(
      tag: params["tag"]
    )
    if tag.save
      render json: tag.as_json
    else
      render json: {errors: tag.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
