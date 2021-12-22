class GroupsController < ApplicationController
  ### Standard RESTful routes ###
  def create
    group = Group.new(
      user_id: current_user.id,
      name: params["name"],
      email: params["email"],
      address: params["address"],
      website: params["website"],
      mission_statement: params["mission_statement"],
      image_url: params["image_url"],
      description: params["description"]
    )
    if group.save
      render json: group
    else
      render json: {errors: event.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def user_groups
    groups = current_user.groups
    render json: groups
  end

  def index
    groups = Group.all
    render json: groups
  end

  def update
    group = Group.find_by(id: params["id"])
    group.name = params["name"] || group.name
    group.email = params["email"] || group.email
    group.address = params["address"] || group.address
    group.website = params["website"] || group.website
    group.mission_statement = params["mission_statement"] || group.mission_statement
    group.image_url = params["image_url"] || group.image_url
    group.description = params["description"] || group.description
    if group.save
      render json: {message: "Group successfully updated", params: group}
    else
      render json: {errors: group.errors.full_messages}, status: 418
    end
  end

  def show
    group = Group.find_by(id: params["id"])
    render json: group
  end

end
