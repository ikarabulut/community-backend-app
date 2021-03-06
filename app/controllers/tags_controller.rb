class TagsController < ApplicationController
  def create
    tag = Tag.new(
      tag: params["tag"]
    )
    if tag.save
      render json: tag
    else
      render json: {errors: tag.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    tags = Tag.all
    render json: tags
  end
  
end
